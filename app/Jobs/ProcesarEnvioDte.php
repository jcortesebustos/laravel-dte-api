<?php

namespace App\Jobs;

use App\Components\Sii;
use App\Models\EnvioDte;
use App\Models\Documento;
use Illuminate\Bus\Queueable;
use Illuminate\Support\Facades\Log;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;

class ProcesarEnvioDte implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $id;

    /**
     * Create a new job instance.
     * @param integer $documento_id
     */
    public function __construct(int $documento_id)
    {
        $this->id = $documento_id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        /* @var Documento $documento */
        /* @var EnvioDte $empaquetado */
        Log::info('Inicio handle de ProcesarEnvioDte', ['job_id' => $this->job->uuid(), 'documento_id' => $this->id]);
        try {
            $documento = Documento::find($this->id);
            Log::info('Documento encontrado', ['documento' => $documento]); // Loguea el objeto completo
            if (!$documento) {
                Log::error('Documento no encontrado en el Job', ['documento_id' => $this->id]);
                return; // Importante: Salir del Job si no se encuentra el documento.
            }


            $empaque = [];
            array_push($empaque, $documento);
            $boleta = in_array($documento->idDoc->TipoDTE, [39, 41]) ? 1 : 0;
            Log::info('Antes de empaquetarDtes', [
                'empaque' => $empaque,
                'boleta' => $boleta
            ]);
            $empaquetado = EnvioDte::empaquetarDtes($empaque, 0, $boleta);

            Log::info('Después de empaquetarDtes', ['empaquetado' => $empaquetado]);

            if (! $empaquetado) {
                Log::error('Empaquetado falló'); // Agregamos un log específico si falla.
                return; // Salir si falla el empaquetado
            }

            $xml_string = $empaquetado->generarXML();
            $file = $empaquetado->subirXmlS3($xml_string);

            if (! $file) {
                Log::error('Error al subir el archivo XML al S3');
            }

            $empaquetado->archivos()->attach($file->id);
            $empaquetado->subirAllSii();
        } catch (\Exception $e) {
            Log::error('Excepción en handle de ProcesarEnvioDte', [
                'message' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
                'trace' => $e->getTraceAsString() // Importante: Incluir el stack trace completo.
            ]);
        }
        Log::info('Fin handle de ProcesarEnvioDte', ['job_id' => $this->job->uuid()]);
    }
}
