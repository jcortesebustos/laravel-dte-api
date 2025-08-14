<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Storage;
use DOMDocument;

class ValidateDteSchema extends Command
{
    protected $signature = 'dte:validate-schema
        {--id= : ID de EnvioDte para generar y validar}
        {--s3= : Clave/Key en S3 para leer y validar}
        {--local= : Ruta local del XML para validar}
        {--xsd-dir=app/components/schemas/ENVIODTE : Carpeta local con los XSD}
        {--sanitize : Aplicar saneo de caracteres tipográficos/Unicode}
    ';

    protected $description = 'Valida EnvioDTE/EnvioBOLETA contra su XSD oficial (SII).';

    public function handle(): int
    {
        try {
            $xml = $this->obtenerXml();
            if ($xml === null) {
                $this->error('Debes usar una de las opciones: --id, --s3 o --local');
                return 1;
            }

            if ($this->option('sanitize')) {
                $xml = $this->sanitizeXmlForSii($xml);
            }

            $xsdDir = rtrim($this->option('xsd-dir'), '/');
            if (!is_dir(base_path($xsdDir))) {
                $this->error("Directorio XSD no existe: " . base_path($xsdDir));
                return 1;
            }

            $schemaPath = $this->resolverSchemaDesdeRaiz($xml, $xsdDir);
            if (!$schemaPath) {
                $this->error('No se pudo determinar el XSD (¿raíz EnvioDTE o EnvioBOLETA?).');
                return 1;
            }

            // Para que los <xs:include/import> relativos funcionen, ejecutamos en ese directorio
            $cwd = getcwd();
            chdir(dirname($schemaPath));

            libxml_use_internal_errors(true);
            libxml_clear_errors();

            $dom = new DOMDocument('1.0', 'ISO-8859-1');
            $dom->preserveWhiteSpace = true;
            $dom->formatOutput = false;

            if (!$dom->loadXML($xml, LIBXML_NONET)) {
                $this->mostrarErroresLibxml('Error cargando XML (antes de validar)');
                chdir($cwd);
                return 1;
            }

            $ok = $dom->schemaValidate($schemaPath);

            chdir($cwd);

            if ($ok) {
                $this->info('✅ XML válido contra XSD: ' . basename($schemaPath));
                return 0;
            }

            $this->mostrarErroresLibxml('❌ Falló la validación de esquema');
            return 1;

        } catch (\Throwable $e) {
            $this->error('Excepción: ' . $e->getMessage());
            return 1;
        }
    }

    /** Carga XML desde id (modelo), S3 o ruta local */
    private function obtenerXml(): ?string
    {
        if ($id = $this->option('id')) {
            // Genera XML con tu modelo EnvioDte
            $envio = \App\Models\EnvioDte::find($id);
            if (!$envio) {
                $this->error("EnvioDte id={$id} no encontrado.");
                return null;
            }
            // Si ya integraste el saneo dentro de generarXML(), puedes quitar el --sanitize al ejecutar
            return $envio->generarXML();
        }

        if ($key = $this->option('s3')) {
            return Storage::disk('s3')->get($key);
        }

        if ($path = $this->option('local')) {
            return file_get_contents($path);
        }

        return null;
    }

    /** Decide XSD por el elemento raíz: EnvioDTE -> v10, EnvioBOLETA -> v11 */
    private function resolverSchemaDesdeRaiz(string $xml, string $xsdDir): ?string
    {
        $root = $this->extraerRaiz($xml);
        $base = base_path($xsdDir);

        if (stripos($root, 'enviodte') !== false) {
            $path = $base . '/EnvioDTE_v10.xsd';
            return is_file($path) ? $path : null;
        }
        if (stripos($root, 'envioboleta') !== false) {
            $path = $base . '/EnvioBOLETA_v11.xsd';
            return is_file($path) ? $path : null;
        }
        return null;
    }

    /** Extrae el nombre del elemento raíz de forma robusta */
    private function extraerRaiz(string $xml): string
    {
        // Evita cargar todo si hay caracteres ilegales
        if (!preg_match('/<\s*([A-Za-z_][\w\.\-:]*)\b/', $xml, $m)) {
            return '';
        }
        return strtolower($m[1]);
    }

    /** Muestra errores de libxml con línea/columna */
    private function mostrarErroresLibxml(string $titulo): void
    {
        $this->error($titulo);
        foreach (libxml_get_errors() as $err) {
            $lvl = ['','W','E','F'][$err->level] ?? 'E';
            $this->line(sprintf("  [%s] L%d C%d: %s", $lvl, $err->line, $err->column, trim($err->message)));
        }
        libxml_clear_errors();
    }

    /** Sanea caracteres no válidos para ISO-8859-1/XML 1.0 y tipográficos frecuentes */
    private function sanitizeXmlForSii(string $xml): string
    {
        $map = [
            // dashes
            "\xE2\x80\x93" => '-',  // U+2013 – en dash
            "\xE2\x80\x94" => '-',  // U+2014 — em dash
            "\xE2\x88\x92" => '-',  // U+2212 − minus
            // quotes
            "\xE2\x80\x98" => "'",  "\xE2\x80\x99" => "'", // ‘ ’
            "\xE2\x80\x9C" => '"',  "\xE2\x80\x9D" => '"', // “ ”
            // ellipsis & nbsp
            "\xE2\x80\xA6" => '...', // …
            "\xC2\xA0"     => ' ',   // NBSP
        ];
        $xml = strtr($xml, $map);

        // Entidades numéricas comunes
        $xml = strtr($xml, [
            '&#8211;' => '-', '&#x2013;' => '-',
            '&#8212;' => '-', '&#x2014;' => '-',
            '&#8722;' => '-', '&#x2212;' => '-',
            '&#8216;' => "'", '&#x2018;' => "'",
            '&#8217;' => "'", '&#x2019;' => "'",
            '&#8220;' => '"', '&#x201C;' => '"',
            '&#8221;' => '"', '&#x201D;' => '"',
            '&#8230;' => '...', '&#x2026;' => '...',
            '&#160;'  => ' ',   '&#x00A0;'  => ' ',
        ]);

        // Quita caracteres no permitidos por XML 1.0 (excepto \t \n \r)
        $xml = preg_replace('/[^\x09\x0A\x0D\x20-\x7E\xA0-\xFF]/u', '', $xml);
        return $xml;
    }
}
