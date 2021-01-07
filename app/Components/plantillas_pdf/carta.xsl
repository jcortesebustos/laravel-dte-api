<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>
    <xsl:decimal-format name="chilean" decimal-separator="," grouping-separator="."/>

    <xsl:output method="xml" version="1.0" omit-xml-declaration="yes"
                    indent="yes" encoding="ISO-8859-1"/>

    <xsl:template match="/">
        <div class="hojaCarta">
           <xsl:apply-templates select="DTE/*[1]"/>
        </div>

        <div class="ted">
            <xsl:call-template name="TED" />

             <span style="font-size:8pt; font-family:sans-serif;">
                Timbre Electr�nico SII
            </span>
            <br></br>
            <span style="font-size:8pt; font-family:sans-serif;">
                Res. var:numero_resolucion de var:ano_resolucion - Verifique Documento: var:web_verificacion
            </span>
        </div>

        <div style="width:6.5cm;height:6.04cm;float:right;">
            <xsl:call-template name="Totales" />
        </div>

        <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE = '41'">
            <div style="padding-left:1cm;padding-right:1cm;width: 100%; font-size:7px;">
                LEY DE SUBVENCIONES D.F.L. N�2 DE 1998, DEL MINISTERIO DE EDUCACI�N
                Art�culo 24: Los Establecimientos Educacionales de Financiamiento Compartido podr�n efectuar cobros mensuales por alumno no mayores de 4 U.S.E. Para los efectos de
                este t�tulo se entender� por cobro mensual promedio el valor que resulte de aplicar el art�culo 34� de la presente ley. Los cobros que efect�en los establecimientos
                educacionales de Financiamiento Compartido solo podr�n ser los comunicados conforme al inciso del art�culo 26, los que deber�n constar en recibos timbrados por el Servicio
                de Impuestos Internos y ser�n compatibles con otros cobros, obligatorios para los padres y apoderados, cualquiera sea su denominaci�n y finalidad.
                Art�culo 26: Simult�neamente deber� informar el respecto mediante comunicaci�n escrita a los padres y apoderados, d�ndoles a conocer tambi�n junto con la propuesta
                educativa, el sistema de exenciones de cobro a que se refiera el art�culo 24 y una indicaci�n precisa del monto inicial de cobro y el m�ximo de reajustabilidad por sobre el �ndice
                de Precios al Consumidor (I.P.C.) o de la variaci�n de la unidad de subvenci�n educacional (U.S.E.) que se aplicar� durante los tres a�os siguientes. Asimismo, a partir del a�o
                de vigencia del cobro inicial, el sostenedor podr� fijar el valor del cobro del nuevo trienio, pero deber� respectar el sistema de reajustabilidad ya determinado para los dos
                primeros a�os. En ning�n caso podr� modificar lo informado para ese per�odo.
                Se deber� comunicar a la Secretar�a Regional Ministerial respectiva los montos de cobros anuales, antes del 30 de octubre de cada a�o. El establecimiento deber� informar
                anualmente a la comunidad, con copia al Ministerio de Educaci�n, sobre la forma en que utilizaron los recursos, el avance del proyecto educativo y su contribuci�n al
                mejoramiento de la calidad de la educaci�n, pudiendo los padres y apoderados, en todo momento formular ideas y proposiciones al respecto. La comunicaci�n al Ministerio de
                Educaci�n s�lo tendr� por objeto acreditar el cumplimiento de esta obligaci�n.
                Art�culo 62: Inciso primero, DSE N�755/97: Entre los meses de noviembre de un a�o y marzo del siguiente, el sostenedor deber� determinar los beneficios de exenciones de
                pago y su correspondiente monto de exenci�n, en concordancia con el reglamento interno y sus proyecciones de ingreso y asistencia media. El establecimiento educacional de
                financiamiento compartido deber� comunicar los montos de exenci�n de pago de arancel a los padres y apoderados de los alumnos beneficiados con el sistema, para los cuales
                la exenci�n deber� mantenerse en los mismos t�rminos, a lo menos, hasta el t�rmino del a�o escolar respectivo.
                Art�culo 62, inciso quinto, DSE N�755/97: La aplicaci�n del sistema de becas se efectuar� en los establecimientos educacionales de educaci�n media del sector municipal, sin
                perjuicio del beneficio de gratuidad establecido en el inciso final del art�culo 23 del decreto con fuerza de ley N�2, de Educaci�n, de 1998.
            </div>
        </xsl:if>

        <!-- FINAL HOJA 1 -->

        <xsl:choose>
           <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE !=39 and /DTE/*[1]/Encabezado/IdDoc/TipoDTE != '41' and /DTE/*[1]/Encabezado/IdDoc/TipoDTE !=56 and /DTE/*[1]/Encabezado/IdDoc/TipoDTE !=61 and not(/DTE/*[1]/Encabezado/IdDoc/IndTraslado) or (/DTE/*[1]/Encabezado/IdDoc/IndTraslado!=5 and /DTE/*[1]/Encabezado/IdDoc/IndTraslado!=6)">
            <!-- INICIO HOJA 3 -->
                <div class="hojaCarta">
                <xsl:apply-templates select="DTE/*[1]" />
                </div>

                <div class="ted">
                        <xsl:call-template name="TED" />

                         <span style="font-size:8pt; font-family:sans-serif;">
                                Timbre Electr�nico SII
                        </span>
                        <br></br>
                        <span style="font-size:8pt; font-family:sans-serif;">
                                Res. var:numero_resolucion de var:ano_resolucion - Verifique Documento: var:web_verificacion
                        </span>
                </div>
                <div style="width:8cm;float:left;margin-left:0.25cm;border:1px solid black;margin-top:0cm;">
                        <table style="float:left;width:8cm;font-family:Arial,Helvetica;color:black;font-size:8pt;">
                            <tr>
                                <td colspan="2" style="text-align:center;">ACUSE DE RECIBO</td>
                            </tr>
                            <tr>
                                <td style="width:1.9cm;">NOMBRE</td>
                                <td style="border-bottom:1px solid black;"></td>
                            </tr>
                            <tr>
                                <td>R.U.T</td>
                                <td style="border-bottom:1px solid black;"></td>
                            </tr>
                            <tr>
                                <td>FECHA</td>
                                <td style="border-bottom:1px solid black;"></td>
                            </tr>
                            <tr>
                                <td>RECINTO</td>
                                <td style="border-bottom:1px solid black;"></td>
                            </tr>
                            <tr>
                                <td>&#xa0;</td>
                                <td>&#xa0;</td>
                            </tr>
                            <tr>
                                <td>FIRMA</td>
                                <td style="border-bottom:1px solid black;"></td>
                            </tr>
                        </table>
                        <div style="text-align:justify;margin-top:0.1cm;font-size:6pt;width:11.75cm;font-family:Arial,Helvetica;color:black;float:left;">
                       EL ACUSE RECIBO QUE SE DECLARA EN ESTE ACTO, DE ACUERDO A LO

                 DISPUESTO EN LA LETRA b) DEL Art.4 Y LA LETRA c) DEL Art.5 DE LA LEY

                 19.983, ACREDITA QUE LA ENTREGA DE MERCADERIA(S) O SERVICIO(S)

                 PRESTADO(S) HA(N) SIDO RECIBIDO(S) EN TOTAL CONFORMIDAD.
                        </div>
                </div>


                <div style="width:6.0cm;height:4.04cm;float:right;">
                    <xsl:call-template name="Totales" />

                </div>

                <div style="float:left;;width:5.5cm;font-size:10pt;font-family:Arial,Helvetica;color:black;font-weight:bold;text-align:right;padding-right:1cm;">
                        CEDIBLE <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE = '52'">CON SU FACTURA</xsl:if>
                </div>
                <!-- FINAL HOJA 3 -->
            </xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="DTE/*[1]">
        <xsl:apply-templates select="Encabezado/Emisor">
            <xsl:with-param name="folio">
                <xsl:value-of select="Encabezado/IdDoc/Folio" />
            </xsl:with-param>
            <xsl:with-param name="tipo">
                <xsl:value-of select="Encabezado/IdDoc/TipoDTE" />
            </xsl:with-param>
        </xsl:apply-templates>
        <xsl:apply-templates select="Encabezado/Receptor">
            <xsl:with-param name="fecha">
                <xsl:value-of select="Encabezado/IdDoc/FchEmis" />
            </xsl:with-param>
            <xsl:with-param name="medioPago">
                <xsl:value-of select="Encabezado/IdDoc/MedioPago" />
            </xsl:with-param>
            <xsl:with-param name="formaPago">
                <xsl:value-of select="Encabezado/IdDoc/FmaPago" />
            </xsl:with-param>
            <xsl:with-param name="formaPagoExp">
                <xsl:value-of select="Encabezado/IdDoc/FmaPagExp" />
            </xsl:with-param>
        </xsl:apply-templates>

    <xsl:choose>
        <xsl:when test="DscRcgGlobal">
            <div id="listaDscRcgGlobal">
                <table id="tablaDscRcgGlobal" style="width:19.6cm;font-size:8pt; font-family:Arial,Helvetica;color:black; text-align:left;">
                    <thead>
                        <tr>
                            <td colspan="4" style="text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                DESCUENTOS / RECARGOS GLOBALES
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                Tipo Movimiento
                                </span>
                            </td>
                            <td style="width:7cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Glosa
                                </span>
                            </td>
                            <td style="width:4cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Tipo Valor
                                </span>
                            </td>
                             <td style="width:4cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Valor
                                </span>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="DscRcgGlobal">
                            <tr>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:choose>
                                            <xsl:when test="TpoMov='R'">
                                                RECARGO
                                            </xsl:when>
                                            <xsl:when test="TpoMov='D'">
                                                DESCUENTO
                                            </xsl:when>
                                        </xsl:choose>
                                    </span>
                                </td>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select="GlosaDR" />
                                    </span>
                                </td>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:choose>
                                            <xsl:when test="TpoValor='$'">
                                                $ PESOS
                                            </xsl:when>
                                            <xsl:when test="TpoValor='%'">
                                                % PORCENTAJE
                                            </xsl:when>
                                        </xsl:choose>
                                    </span>
                                </td>
                                <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select='ValorDR'/>
                                    </span>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </xsl:when>
    </xsl:choose>

        <xsl:choose>
            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/TipoBultos">
                <div id="listaBultos">
                    <table id="tablaBultos" style="width:19.6cm;font-size:8pt; font-family:Arial,Helvetica;color:black; text-align:left;">
                        <thead>
                            <tr>
                                <td colspan="6" style="text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        Bultos
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td style="width:7cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        TIPO BULTO
                                    </span>
                                </td>
                                <td style="width:1.5cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        CANTIDAD
                                    </span>
                                </td>1 +1
                                <td style="width:2cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        MARCAS
                                    </span>
                                </td>
                                <td style="width:3cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        ID CONTAINER
                                    </span>
                                </td>
                                <td style="width:3cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        SELLO
                                    </span>
                                </td>
                                <td style="width:3cm;text-align:center;border-bottom:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        EMISOR SELLO
                                    </span>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/DTE/*[1]/Encabezado/Transporte/Aduana/TipoBultos">
                                <tr>
                                    <td class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:choose>
                                                <xsl:when test="CodTpoBultos=  1  ">GRANEL S�LIDO, PARTICULAS FINAS (POLVO)</xsl:when>
                                                <xsl:when test="CodTpoBultos= 2  ">GRANEL S�LIDO, PARTICULAS GRANULARES (GRANOS)</xsl:when>
                                                <xsl:when test="CodTpoBultos= 3  ">GRANEL S�LIDO, PARTICULAS GRANDES (N�DULOS)</xsl:when>
                                                <xsl:when test="CodTpoBultos= 4  ">GRANEL L�QUIDO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 5  ">GRANEL GASEOSO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 10 ">PIEZAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 11 ">TUBOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 12 ">CILINDRO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 13 ">ROLLOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 16 ">BARRAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 17 ">LINGOTES</xsl:when>
                                                <xsl:when test="CodTpoBultos= 18 ">TRONCOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 19 ">BLOQUE</xsl:when>
                                                <xsl:when test="CodTpoBultos= 20 ">ROLLIZO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 21 ">CAJON</xsl:when>
                                                <xsl:when test="CodTpoBultos= 22 ">CAJAS DE CART�N</xsl:when>
                                                <xsl:when test="CodTpoBultos= 23 ">FARDO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 24 ">BA�L</xsl:when>
                                                <xsl:when test="CodTpoBultos= 25 ">COFRE</xsl:when>
                                                <xsl:when test="CodTpoBultos= 26 ">ARMAZ�N</xsl:when>
                                                <xsl:when test="CodTpoBultos= 27 ">BANDEJA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 28 ">CAJAS DE MADERA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 29 ">CAJAS DE LATA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 31 ">BOTELLA DE GAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 32 ">BOTELLA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 33 ">JAULAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 34 ">BIDON</xsl:when>
                                                <xsl:when test="CodTpoBultos= 35 ">JABAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 36 ">CESTAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 37 ">BARRILETE</xsl:when>
                                                <xsl:when test="CodTpoBultos= 38 ">TONEL</xsl:when>
                                                <xsl:when test="CodTpoBultos= 39 ">PIPAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 41 ">JARRO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 42 ">FRASCO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 43 ">DAMAJUANA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 44 ">BARRIL</xsl:when>
                                                <xsl:when test="CodTpoBultos= 45 ">TAMBOR</xsl:when>
                                                <xsl:when test="CodTpoBultos= 46 ">CU�ETES</xsl:when>
                                                <xsl:when test="CodTpoBultos= 47 ">TARROS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 51 ">CUBO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 61 ">PAQUETE</xsl:when>
                                                <xsl:when test="CodTpoBultos= 62 ">SACOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 63 ">MALETA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 64 ">BOLSA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 65 ">BALA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 66 ">RED</xsl:when>
                                                <xsl:when test="CodTpoBultos= 67 ">SOBRES</xsl:when>
                                                <xsl:when test="CodTpoBultos= 73 ">CONTENEDOR DE 20 PIES DRY</xsl:when>
                                                <xsl:when test="CodTpoBultos= 74 ">CONTENEDOR DE 40 PIES DRY</xsl:when>
                                                <xsl:when test="CodTpoBultos= 75 ">CONTENEDOR REFRIGERADO 20 PIES</xsl:when>
                                                <xsl:when test="CodTpoBultos= 76 ">CONTENEDOR REFRIGERADO 40 PIES</xsl:when>
                                                <xsl:when test="CodTpoBultos= 77 ">ESTANQUE� (no utilizar para contenedor Tank)</xsl:when>
                                                <xsl:when test="CodTpoBultos= 78 ">CONTENEDOR NO ESPECIFICADO (Open Top, Tank, Flat Rack, otros)</xsl:when>
                                                <xsl:when test="CodTpoBultos= 80 ">PALLETS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 81 ">TABLERO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 82 ">LAMINAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 83 ">CARRETE</xsl:when>
                                                <xsl:when test="CodTpoBultos= 85 ">AUTOMOTOR</xsl:when>
                                                <xsl:when test="CodTpoBultos= 86 ">ATAUD</xsl:when>
                                                <xsl:when test="CodTpoBultos= 88 ">MAQUINARIA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 89 ">PLANCHAS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 90 ">ATADOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 91 ">BOBINA</xsl:when>
                                                <xsl:when test="CodTpoBultos= 93 ">OTROS BULTOS NO ESPECIFICADOS</xsl:when>
                                                <xsl:when test="CodTpoBultos= 98 ">NO EXISTE BULTO</xsl:when>
                                                <xsl:when test="CodTpoBultos= 99 ">SIN EMBALAR</xsl:when>
                                            </xsl:choose>
                                        </span>
                                    </td>
                                    <td class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:value-of select="CantBultos" />
                                        </span>
                                    </td>
                                    <td class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:value-of select='Marcas' />
                                        </span>
                                    </td>
                                    <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:value-of select='IdContainer'/>
                                        </span>
                                    </td>
                                    <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:value-of select='Sello'/>
                                        </span>
                                    </td>
                                    <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                        <span>
                                            <xsl:value-of select='EmisorSello'/>
                                        </span>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </xsl:when>
        </xsl:choose>

    <xsl:choose>
        <xsl:when test="Referencia">
            <div id="listaReferencias">
                <table id="tablaReferencias" style="width:19.6cm;font-size:8pt; font-family:Arial,Helvetica;color:black; text-align:left;">
                    <thead>
                        <tr>
                            <td colspan="4" style="text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                Referencias a otros documentos
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:7cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Tipo Documento
                                </span>
                            </td>
                            <td style="width:2.5cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Folio
                                </span>
                            </td>
                             <td style="width:3cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Fecha
                                </span>
                            </td>
                            <td style="width:7cm;text-align:center;border-bottom:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Raz�n Referencia
                                </span>
                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Referencia">
                            <tr>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:choose>
                                            <xsl:when test="TpoDocRef=30">
                                                FACTURA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=32">
                                                FACTURA DE VENTA BIENES Y SERVICIOS NO AFECTO O EXENTOS DE IVA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=33">
                                                FACTURA ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=34">
                                                FACTURA NO AFECTA O EXENTA ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=35">
                                                BOLETA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=38">
                                                BOLETA EXENTA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=39">
                                                BOLETA ELECT�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=40">
                                                LIQUIDACI�N FACTURA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=41">
                                                BOLETA EXENTA ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=43">
                                                LIQUIDACI�N-FACTURA ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=45">
                                                FACTURA DE COMPRA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=46">
                                            FACTURA DE COMPRA ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=50">
                                                GU�A DE DESPACHO
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=52">
                                                GU�A DE DESPACHO ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=55">
                                                NOTA DE D�BITO
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=56">
                                                NOTA DE D�BITO ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=60">
                                                NOTA DE CREDITO
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=61">
                                                NOTA DE CR�DITO ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=103">
                                                LIQUIDACI�N
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=110">
                                                FACTURA DE EXPORTACI�N ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=111">
                                                NOTA DE D�BITO DE EXPORTACI�N ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=112">
                                                NOTA DE CR�DITO DE EXPORTACI�N ELECTR�NICA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=801">
                                                ORDEN DE COMPRA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=802">
                                                NOTA DE PEDIDO
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=803">
                                                CONTRATO
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=804">
                                                RESOLUCI�N
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=805">
                                                PROCESO CHILECOMPRA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=806">
                                                FICHA CHILE COMPRA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=807">
                                                DUS
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=808">
                                                B/L (CONOCIMIENTO DE EMBARQUE)
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=809">
                                                AWB (AIR WILL BILL)
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=810">
                                                MIC/DTA
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=811">
                                                CARTA DE PORTE
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=812">
                                                RESOLUCI�N DEL SNA DONDE CALIFICA SERVICIOS DE EXPORTACI�N
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=813">
                                                PASAPORTE
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=814">
                                                CERTIFICADO DE DEP�SITO BOLSA PROD. CHILE
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef=815">
                                                VALE DE PRENDA BOLSA PROD. CHILE
                                            </xsl:when>
                                            <xsl:when test="TpoDocRef='SET'">
                                                SET
                                            </xsl:when>
                                            <xsl:otherwise>
                                                 <xsl:value-of select='TpoDocRef'/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </span>
                                </td>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select="FolioRef" />
                                    </span>
                                </td>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select="substring(FchRef,string-length(FchRef)-1,2)" />-<xsl:value-of select="substring(FchRef,string-length(FchRef)-4,2)" />-<xsl:value-of select="substring(FchRef,string-length(FchRef)-9,4)" />
                                    </span>
                                </td>
                                <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select='RazonRef'/>
                                    </span>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>
        </xsl:when>
    </xsl:choose>

        <!--  La lista de detalle -->
        <div id="listaDetalle">
            <table id="tablaDetalle" style="width:100%;font-size:7pt; font-family:Arial,Helvetica;color:black; text-align:left;">
                <thead>
                    <tr>
                        <td style="width:2cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                C�digo
                            </span>
                        </td>
                        <td style="width:9cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Descripci�n
                            </span>
                        </td>
                        <td style="width:1.5cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Cantidad
                            </span>
                        </td>
                        <td style="width:1cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Unid
                            </span>
                        </td>
                        <td style="width:2cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Precio
                            </span>
                        </td>
                        <td style="width:2cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Desc/Rcg
                            </span>
                        </td>
                        <td style="width:2cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Valor
                            </span>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="Detalle">
                        <tr>
                            <td class="centrado" style="border-bottom:0.5pt solid black;">
                                <span>
                                    <xsl:value-of select="CdgItem/VlrCodigo" />
                                </span>
                            </td>
                            <td class="items" style="border-bottom:0.5pt solid black;text-align:left;">
                                <span>
                                    <xsl:value-of select="NmbItem" />
                                    <br />
                                    <xsl:value-of select="DscItem" />
                                </span>
                            </td>
                            <td class="centrado" style="border-bottom:0.5pt solid black;">
                                <span>
                                    <xsl:choose>
                                        <xsl:when test="QtyItem != 'NaN'">
                                            <xsl:value-of select='format-number(QtyItem, "#.###,####", "chilean")'/>
                                        </xsl:when>
                                    </xsl:choose>
                                </span>
                            </td>
                            <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                <xsl:value-of select='UnmdItem'/>
                            </td>
                            <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                <span>
                                        <xsl:choose>
                                            <xsl:when test="PrcItem != 0 and PrcItem != 'NaN' and PrcItem != ''">
                                                    <xsl:value-of select='format-number(PrcItem, "#.###,####", "chilean")'/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                            0
                                            </xsl:otherwise>
                                        </xsl:choose>
                                </span>
                            </td>
                            <td  class="centrado" style="border-bottom:0.5pt solid black;">
                                <span>
                                    <xsl:if test="sum(DescuentoMonto) != 0">
                                        D. <xsl:value-of select='format-number(DescuentoMonto, "#.###,##", "chilean")'/>
                                    </xsl:if>

                                    <xsl:if test="sum(RecargoMonto) != 0">
                                        R. <xsl:value-of select='format-number(RecargoMonto, "#.###,##", "chilean")'/>
                                    </xsl:if>
                                </span>
                            </td>
                            <td class="centrado" style="border-bottom:0.5pt solid black;">
                                <span>
                                    <xsl:value-of select='format-number(MontoItem, "#.###,##", "chilean")'/>
                                </span>
                            </td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>


        </div>
        <xsl:if test="sum(/DTE/*[1]/Encabezado/Totales/ImptoReten/MontoImp) != 0">
        <div id="listaImpAdic">
            <table id="tablaImpAdic" style="width:19.5cm;font-size:8pt; font-family:Arial,Helvetica;color:black; text-align:left;">
                <thead>
                    <tr>
                        <td style="width:15cm;text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Impuesto
                            </span>
                        </td>
                        <td style="text-align:center;border-bottom:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Monto
                            </span>
                        </td>
                    </tr>
                    </thead>

                    <tbody>
                        <xsl:for-each select="/DTE/*[1]/Encabezado/Totales/ImptoReten">
                            <xsl:choose>
                            <xsl:when test="TipoImp !=15">
                            <tr>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:choose>
                                            <xsl:when test="TipoImp=271">
                                                Bebidas analcoh�licas y Minerales con elevado contenido de az�cares.
                                            </xsl:when>
                                            <xsl:when test="TipoImp=17">
                                                IVA ANTICIPADO FAENAMIENTO CARNE
                                            </xsl:when>
                                            <xsl:when test="TipoImp=18">
                                                IVA ANTICIPADO CARNE
                                            </xsl:when>
                                            <xsl:when test="TipoImp=19">
                                                IVA ANTICIPADO HARINA
                                            </xsl:when>
                                            <xsl:when test="TipoImp=27">
                                                DL 825/74 , ART. 42 a) Bebidas analcoh�licas y minerales
                                            </xsl:when>
                                            <xsl:when test="TipoImp=25">
                                                DL 825/74 , ART. 42, letra c) Vinos
                                            </xsl:when>
                                            <xsl:when test="TipoImp=24">
                                                Impuesto Art. 42 a) Licores, Pisco, Destilados [F29 - C148]
                                            </xsl:when>
                                            <xsl:when test="TipoImp=26">
                                                Impuesto Art. 42 c) Cervezas y Bebidas Alcoholicas [F29 - C150]
                                            </xsl:when>
                                            <xsl:when test="TipoImp=23">
                                                ARTICULOS DE ORO
                                            </xsl:when>
                                            <xsl:otherwise>
                                                CORREGIR EN TEMPLATE XSL
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </span>
                                </td>
                                <td class="centrado" style="border-bottom:0.5pt solid black;">
                                    <span>
                                        <xsl:value-of select='format-number(MontoImp, "#.###,####", "chilean")' />
                                    </span>
                                </td>
                            </tr>
                            </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>
                    </tbody>
            </table>
        </div>
        </xsl:if>
    </xsl:template>


    <!-- Datos del emisor -->
    <xsl:template match="Emisor">
        <xsl:param name="folio" />
        <xsl:param name="tipo" />
        <xsl:param name="title" />
        <div class="header">


            <div class="RznSocActeco">
                var:logo1
                <div class="contenedorLogotipo">
                    <img src="var:logotipo"/>
                </div>
                var:logo2
                <div class="divRznSoc" style="margin-left:4.1cm;">
                <span style="font-size:11pt; font-family:Arial,Helvetica;font-weight:bold; color:red;">
                    var:razon_social<!--<xsl:value-of select="RznSoc" />-->
                </span>
                </div>

                <div class="divActeco" style="margin-left:4.1cm;">
                    <span class="acteco" style="font-size:8pt;font-family:Arial,Helvetica;color:black;text-align:left;">
                        <xsl:choose>
                            <xsl:when test="$tipo=39 or $tipo=41"><xsl:value-of select="GiroEmisor" /></xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="GiroEmis" />
                            </xsl:otherwise>
                        </xsl:choose>

                        <br/>

                        <xsl:variable name="fecha" select="10000 * substring(/DTE/*[1]/Encabezado/IdDoc/FchEmis, 1, 4) + 100 * substring(/DTE/*[1]/Encabezado/IdDoc/FchEmis, 6, 2) + substring(/DTE/*[1]/Encabezado/IdDoc/FchEmis, 9, 2)"/>
                        <xsl:choose>
                            <xsl:when test="$fecha &lt; 20181101 ">
                                <!-- code for dates earlier than 2018-11-01  -->
                                <xsl:for-each select="Acteco">
                                    <xsl:choose>
                                        <xsl:when test=".=	11111	">	CULTIVO DE TRIGO	</xsl:when>
                                        <xsl:when test=".=	11112	">	CULTIVO DE MAIZ	</xsl:when>
                                        <xsl:when test=".=	11113	">	CULTIVO DE AVENA	</xsl:when>
                                        <xsl:when test=".=	11114	">	CULTIVO DE ARROZ	</xsl:when>
                                        <xsl:when test=".=	11115	">	CULTIVO DE CEBADA	</xsl:when>
                                        <xsl:when test=".=	11119	">	CULTIVO DE OTROS CEREALES	</xsl:when>
                                        <xsl:when test=".=	11121	">	CULTIVO FORRAJEROS EN PRADERAS NATURALES	</xsl:when>
                                        <xsl:when test=".=	11122	">	CULTIVO FORRAJEROS EN PRADERAS MEJORADAS O SEMBRADAS	</xsl:when>
                                        <xsl:when test=".=	11131	">	CULTIVO DE POROTOS O FRIJOL	</xsl:when>
                                        <xsl:when test=".=	11132	">	CULTIVO, PRODUCCI�N DE LUPINO	</xsl:when>
                                        <xsl:when test=".=	11139	">	CULTIVO DE OTRAS LEGUMBRES	</xsl:when>
                                        <xsl:when test=".=	11141	">	CULTIVO DE PAPAS	</xsl:when>
                                        <xsl:when test=".=	11142	">	CULTIVO DE CAMOTES O BATATAS	</xsl:when>
                                        <xsl:when test=".=	11149	">	CULTIVO DE OTROS TUB�RCULOS N.C.P	</xsl:when>
                                        <xsl:when test=".=	11151	">	CULTIVO DE RAPS	</xsl:when>
                                        <xsl:when test=".=	11152	">	CULTIVO DE MARAVILLA	</xsl:when>
                                        <xsl:when test=".=	11159	">	CULTIVO DE OTRAS OLEAGINOSAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	11160	">	PRODUCCI�N DE SEMILLAS DE CEREALES, LEGUMBRES, OLEAGINOSAS	</xsl:when>
                                        <xsl:when test=".=	11191	">	CULTIVO DE REMOLACHA	</xsl:when>
                                        <xsl:when test=".=	11192	">	CULTIVO DE TABACO	</xsl:when>
                                        <xsl:when test=".=	11193	">	CULTIVO DE FIBRAS VEGETALES INDUSTRIALES	</xsl:when>
                                        <xsl:when test=".=	11194	">	CULTIVO DE PLANTAS AROM�TICAS O MEDICINALES	</xsl:when>
                                        <xsl:when test=".=	11199	">	OTROS CULTIVOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	11211	">	CULTIVO TRADICIONAL DE HORTALIZAS FRESCAS	</xsl:when>
                                        <xsl:when test=".=	11212	">	CULTIVO DE HORTALIZAS EN INVERNADEROS Y CULTIVOS HIDROPONICOS	</xsl:when>
                                        <xsl:when test=".=	11213	">	CULTIVO ORG�NICO DE HORTALIZAS	</xsl:when>
                                        <xsl:when test=".=	11220	">	CULTIVO DE PLANTAS VIVAS Y PRODUCTOS DE LA FLORICULTURA	</xsl:when>
                                        <xsl:when test=".=	11230	">	PRODUCCI�N DE SEMILLAS DE FLORES, PRADOS, FRUTAS Y HORTALIZAS	</xsl:when>
                                        <xsl:when test=".=	11240	">	PRODUCCI�N EN VIVEROS; EXCEPTO ESPECIES FORESTALES	</xsl:when>
                                        <xsl:when test=".=	11250	">	CULTIVO Y RECOLECCI�N DE HONGOS, TRUFAS Y SAVIA; PRODUCCI�N DE JARABE DE ARCE DE AZ�CAR Y AZ�CAR	</xsl:when>
                                        <xsl:when test=".=	11311	">	CULTIVO DE UVA DESTINADA A PRODUCCI�N DE PISCO Y AGUARDIENTE	</xsl:when>
                                        <xsl:when test=".=	11312	">	CULTIVO DE UVA DESTINADA A PRODUCCI�N DE VINO	</xsl:when>
                                        <xsl:when test=".=	11313	">	CULTIVO DE UVA DE MESA	</xsl:when>
                                        <xsl:when test=".=	11321	">	CULTIVO DE FRUTALES EN �RBOLES O ARBUSTOS CON CICLO DE VIDA MAYOR A UNA TEMPORADA	</xsl:when>
                                        <xsl:when test=".=	11322	">	CULTIVO DE FRUTALES MENORES EN PLANTAS CON CICLO DE VIDA DE UNA TEMPORADA	</xsl:when>
                                        <xsl:when test=".=	11330	">	CULTIVO DE PLANTAS CUYAS HOJAS O FRUTAS SE UTILIZAN PARA PREPARAR BEBIDAS	</xsl:when>
                                        <xsl:when test=".=	11340	">	CULTIVO DE ESPECIAS	</xsl:when>
                                        <xsl:when test=".=	12111	">	CR�A DE GANADO BOVINO PARA LA PRODUCCI�N LECHERA	</xsl:when>
                                        <xsl:when test=".=	12112	">	CR�A DE GANADO PARA PRODUCCI�N DE CARNE, O COMO GANADO REPRODUCTOR	</xsl:when>
                                        <xsl:when test=".=	12120	">	CR�A DE GANADO OVINO Y/O EXPLOTACI�N LANERA	</xsl:when>
                                        <xsl:when test=".=	12130	">	CR�A DE EQUINOS (CABALLARES, MULARES)	</xsl:when>
                                        <xsl:when test=".=	12210	">	CR�A DE PORCINOS	</xsl:when>
                                        <xsl:when test=".=	12221	">	CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE CARNE	</xsl:when>
                                        <xsl:when test=".=	12222	">	CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE HUEVOS	</xsl:when>
                                        <xsl:when test=".=	12223	">	CR�A DE AVES FINAS O NO TRADICIONALES	</xsl:when>
                                        <xsl:when test=".=	12230	">	CR�A DE ANIMALES DOM�STICOS; PERROS Y GATOS	</xsl:when>
                                        <xsl:when test=".=	12240	">	APICULTURA	</xsl:when>
                                        <xsl:when test=".=	12250	">	RANICULTURA, HELICICULTURA U OTRA ACTIVIDAD CON ANIMALES MENORES O INSECTOS	</xsl:when>
                                        <xsl:when test=".=	12290	">	OTRAS EXPLOTACIONES DE ANIMALES NO CLASIFICADOS EN OTRA PARTE, INCLUIDO SUS SUBPRODUCTOS	</xsl:when>
                                        <xsl:when test=".=	13000	">	EXPLOTACI�N MIXTA	</xsl:when>
                                        <xsl:when test=".=	14011	">	SERVICIO DE CORTE Y ENFARDADO DE FORRAJE	</xsl:when>
                                        <xsl:when test=".=	14012	">	SERVICIO DE RECOLECCI�N, EMPACADO, TRILLA, DESCASCARAMIENTO Y DESGRANE; Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	14013	">	SERVICIO DE ROTURACI�N SIEMBRA Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	14014	">	DESTRUCCI�N DE PLAGAS; PULVERIZACIONES, FUMIGACIONES U OTRAS	</xsl:when>
                                        <xsl:when test=".=	14015	">	COSECHA, PODA, AMARRE Y LABORES DE ADECUACI�N DE LA PLANTA U OTRAS	</xsl:when>
                                        <xsl:when test=".=	14019	">	OTROS SERVICIOS AGR�COLAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	14021	">	SERVICIOS DE ADIESTRAMIENTO, GUARDER�A Y CUIDADOS DE MASCOTAS; EXCEPTO ACTIVIDADES VETERINARIAS	</xsl:when>
                                        <xsl:when test=".=	14022	">	SERVICIOS GANADEROS, EXCEPTO ACTIVIDADES VETERINARIAS	</xsl:when>
                                        <xsl:when test=".=	15010	">	CAZA DE MAM�FEROS MARINOS; EXCEPTO BALLENAS	</xsl:when>
                                        <xsl:when test=".=	15090	">	CAZA ORDINARIA Y MEDIANTE TRAMPAS, Y ACTIVIDADES DE SERVICIOS CONEXAS	</xsl:when>
                                        <xsl:when test=".=	20010	">	EXPLOTACI�N DE BOSQUES	</xsl:when>
                                        <xsl:when test=".=	20020	">	RECOLECCI�N DE PRODUCTOS FORESTALES SILVESTRES	</xsl:when>
                                        <xsl:when test=".=	20030	">	EXPLOTACI�N DE VIVEROS DE ESPECIES FORESTALES	</xsl:when>
                                        <xsl:when test=".=	20041	">	SERVICIOS DE FORESTACI�N	</xsl:when>
                                        <xsl:when test=".=	20042	">	SERVICIOS DE CORTA DE MADERA	</xsl:when>
                                        <xsl:when test=".=	20043	">	SERVICIOS DE CONTROL DE INCENDIOS FORESTALES	</xsl:when>
                                        <xsl:when test=".=	20049	">	OTRAS ACTIVIDADES DE SERVICIOS CONEXAS A LA SILVICULTURA N.C.P.	</xsl:when>
                                        <xsl:when test=".=	51010	">	CULTIVO DE ESPECIES ACU�TICAS EN CUERPO DE AGUA DULCE	</xsl:when>
                                        <xsl:when test=".=	51020	">	REPRODUCCI�N Y CRIANZAS DE PECES MARINOS	</xsl:when>
                                        <xsl:when test=".=	51030	">	CULTIVO, REPRODUCCI�N Y CRECIMIENTOS DE VEGETALES ACU�TICOS	</xsl:when>
                                        <xsl:when test=".=	51040	">	REPRODUCCI�N Y CR�A DE MOLUSCOS Y CRUSTACEOS.	</xsl:when>
                                        <xsl:when test=".=	51090	">	SERVICIOS RELACIONADOS CON LA ACUICULTURA, NO INCLUYE SERVICIOS PROFESIONALES Y DE EXTRACCI�N	</xsl:when>
                                        <xsl:when test=".=	52010	">	PESCA INDUSTRIAL	</xsl:when>
                                        <xsl:when test=".=	52020	">	ACTIVIDAD PESQUERA DE BARCOS FACTOR�AS	</xsl:when>
                                        <xsl:when test=".=	52030	">	PESCA ARTESANAL. EXTRACCI�N DE RECURSOS ACU�TICOS EN GENERAL; INCLUYE BALLENAS	</xsl:when>
                                        <xsl:when test=".=	52040	">	RECOLECCI�N DE PRODUCTOS MARINOS, COMO PERLAS NATURALES, ESPONJAS, CORALES Y ALGAS.	</xsl:when>
                                        <xsl:when test=".=	52050	">	SERVICIOS RELACIONADOS CON LA PESCA, NO INCLUYE SERVICIOS PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	100000	">	EXTRACCI�N, AGLOMERACI�N DE CARB�N DE PIEDRA, LIGNITO Y TURBA	</xsl:when>
                                        <xsl:when test=".=	111000	">	EXTRACCI�N DE PETR�LEO CRUDO Y GAS NATURAL	</xsl:when>
                                        <xsl:when test=".=	112000	">	ACTIVIDADES DE SERVICIOS RELACIONADAS CON LA EXTRACCI�N DE PETR�LEO Y GAS	</xsl:when>
                                        <xsl:when test=".=	120000	">	EXTRACCI�N DE MINERALES DE URANIO Y TORIO	</xsl:when>
                                        <xsl:when test=".=	131000	">	EXTRACCI�N DE MINERALES DE HIERRO	</xsl:when>
                                        <xsl:when test=".=	132010	">	EXTRACCI�N DE ORO Y PLATA	</xsl:when>
                                        <xsl:when test=".=	132020	">	EXTRACCI�N DE ZINC Y PLOMO	</xsl:when>
                                        <xsl:when test=".=	132030	">	EXTRACCI�N DE MANGANESO	</xsl:when>
                                        <xsl:when test=".=	132090	">	EXTRACCI�N DE OTROS MINERALES METAL�FEROS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	133000	">	EXTRACCI�N DE COBRE	</xsl:when>
                                        <xsl:when test=".=	141000	">	EXTRACCI�N DE PIEDRA, ARENA Y ARCILLA	</xsl:when>
                                        <xsl:when test=".=	142100	">	EXTRACCI�N DE NITRATOS Y YODO	</xsl:when>
                                        <xsl:when test=".=	142200	">	EXTRACCI�N DE SAL	</xsl:when>
                                        <xsl:when test=".=	142300	">	EXTRACCI�N DE LITIO Y CLORUROS, EXCEPTO SAL	</xsl:when>
                                        <xsl:when test=".=	142900	">	EXPLOTACI�N DE OTRAS MINAS Y CANTERAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	151110	">	PRODUCCI�N, PROCESAMIENTO DE CARNES ROJAS Y PRODUCTOS C�RNICOS	</xsl:when>
                                        <xsl:when test=".=	151120	">	CONSERVACI�N DE CARNES ROJAS (FRIGOR�FICOS)	</xsl:when>
                                        <xsl:when test=".=	151130	">	PRODUCCI�N, PROCESAMIENTO Y CONSERVACI�N DE CARNES DE AVE Y OTRAS CARNES DISTINTAS A LAS ROJAS	</xsl:when>
                                        <xsl:when test=".=	151140	">	ELABORACI�N DE CECINAS, EMBUTIDOS Y CARNES EN CONSERVA.	</xsl:when>
                                        <xsl:when test=".=	151210	">	PRODUCCI�N DE HARINA DE PESCADO	</xsl:when>
                                        <xsl:when test=".=	151221	">	FABRICACI�N DE PRODUCTOS ENLATADOS DE PESCADO Y MARISCOS	</xsl:when>
                                        <xsl:when test=".=	151222	">	ELABORACI�N DE CONGELADOS DE PESCADOS Y MARISCOS	</xsl:when>
                                        <xsl:when test=".=	151223	">	ELABORACI�N DE PRODUCTOS AHUMADOS, SALADOS, DESHIDRATADOS Y OTROS PROCESOS SIMILARES	</xsl:when>
                                        <xsl:when test=".=	151230	">	ELABORACI�N DE PRODUCTOS EN BASE A VEGETALES ACU�TICOS	</xsl:when>
                                        <xsl:when test=".=	151300	">	ELABORACI�N Y CONSERVACI�N DE FRUTAS, LEGUMBRES Y HORTALIZAS	</xsl:when>
                                        <xsl:when test=".=	151410	">	ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN VEGETAL	</xsl:when>
                                        <xsl:when test=".=	151420	">	ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN ANIMAL, EXCEPTO LAS MANTEQUILLAS	</xsl:when>
                                        <xsl:when test=".=	151430	">	ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN MARINO	</xsl:when>
                                        <xsl:when test=".=	152010	">	ELABORACI�N DE LECHE, MANTEQUILLA, PRODUCTOS L�CTEOS Y DERIVADOS	</xsl:when>
                                        <xsl:when test=".=	152020	">	ELABORACI�N DE QUESOS	</xsl:when>
                                        <xsl:when test=".=	152030	">	FABRICACI�N DE POSTRES A BASE DE LECHE (HELADOS, SORBETES Y OTROS SIMILARES)	</xsl:when>
                                        <xsl:when test=".=	153110	">	ELABORACI�N DE HARINAS DE TRIGO	</xsl:when>
                                        <xsl:when test=".=	153120	">	ACTIVIDADES DE MOLIENDA DE ARROZ	</xsl:when>
                                        <xsl:when test=".=	153190	">	ELABORACI�N DE OTRAS MOLINERAS Y ALIMENTOS A BASE DE CEREALES	</xsl:when>
                                        <xsl:when test=".=	153210	">	ELABORACI�N DE ALMIDONES Y PRODUCTOS DERIVADOS DEL ALMID�N	</xsl:when>
                                        <xsl:when test=".=	153220	">	ELABORACI�N DE GLUCOSA Y OTROS AZ�CARES DIFERENTES DE LA REMOLACHA	</xsl:when>
                                        <xsl:when test=".=	153300	">	ELABORACI�N DE ALIMENTOS PREPARADOS PARA ANIMALES	</xsl:when>
                                        <xsl:when test=".=	154110	">	FABRICACI�N DE PAN, PRODUCTOS DE PANADER�A Y PASTELER�A	</xsl:when>
                                        <xsl:when test=".=	154120	">	FABRICACI�N DE GALLETAS	</xsl:when>
                                        <xsl:when test=".=	154200	">	ELABORACI�N DE AZ�CAR DE REMOLACHA O CANA	</xsl:when>
                                        <xsl:when test=".=	154310	">	ELABORACI�N DE CACAO Y CHOCOLATES	</xsl:when>
                                        <xsl:when test=".=	154320	">	FABRICACI�N DE PRODUCTOS DE CONFITER�A	</xsl:when>
                                        <xsl:when test=".=	154400	">	ELABORACI�N DE MACARRONES, FIDEOS, ALCUZCUZ Y PRODUCTOS FARINACEOS SIMILARES	</xsl:when>
                                        <xsl:when test=".=	154910	">	ELABORACI�N DE TE, CAF�, INFUSIONES	</xsl:when>
                                        <xsl:when test=".=	154920	">	ELABORACI�N DE LEVADURAS NATURALES O ARTIFICIALES	</xsl:when>
                                        <xsl:when test=".=	154930	">	ELABORACI�N DE VINAGRES, MOSTAZAS, MAYONESAS Y CONDIMENTOS EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	154990	">	ELABORACI�N DE OTROS PRODUCTOS ALIMENTICIOS NO CLASIFICADOS EN OTRA PARTE	</xsl:when>
                                        <xsl:when test=".=	155110	">	ELABORACI�N DE PISCOS (INDUSTRIAS PISQUERAS)	</xsl:when>
                                        <xsl:when test=".=	155120	">	ELABORACI�N DE BEBIDAS ALCOH�LICAS Y DE ALCOHOL ET�LICO A PARTIR DE SUSTANCIAS FERMENTADAS Y OTROS	</xsl:when>
                                        <xsl:when test=".=	155200	">	ELABORACI�N DE VINOS	</xsl:when>
                                        <xsl:when test=".=	155300	">	ELABORACI�N DE BEBIDAS MALTEADAS, CERVEZAS Y MALTAS	</xsl:when>
                                        <xsl:when test=".=	155410	">	ELABORACI�N DE BEBIDAS NO ALCOH�LICAS	</xsl:when>
                                        <xsl:when test=".=	155420	">	ENVASADO DE AGUA MINERAL NATURAL, DE MANANTIAL Y POTABLE PREPARADA	</xsl:when>
                                        <xsl:when test=".=	155430	">	ELABORACI�N DE HIELO	</xsl:when>
                                        <xsl:when test=".=	160010	">	FABRICACI�N DE CIGARROS Y CIGARRILLOS	</xsl:when>
                                        <xsl:when test=".=	160090	">	FABRICACI�N DE OTROS PRODUCTOS DEL TABACO	</xsl:when>
                                        <xsl:when test=".=	171100	">	PREPARACI�N DE HILATURA DE FIBRAS TEXTILES; TEJEDURA PROD. TEXTILES	</xsl:when>
                                        <xsl:when test=".=	171200	">	ACABADO DE PRODUCTOS TEXTIL	</xsl:when>
                                        <xsl:when test=".=	172100	">	FABRICACI�N DE ART�CULOS CONFECCIONADOS DE MATERIAS TEXTILES, EXCEPTO PRENDAS DE VESTIR	</xsl:when>
                                        <xsl:when test=".=	172200	">	FABRICACI�N DE TAPICES Y ALFOMBRA	</xsl:when>
                                        <xsl:when test=".=	172300	">	FABRICACI�N DE CUERDAS, CORDELES, BRAMANTES Y REDES	</xsl:when>
                                        <xsl:when test=".=	172910	">	FABRICACI�N DE TEJIDOS DE USO INDUSTRIAL COMO TEJIDOS IMPREGNADOS, MOLTOPRENE, BATISTA, ETC.	</xsl:when>
                                        <xsl:when test=".=	172990	">	FABRICACI�N DE OTROS PRODUCTOS TEXTILES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	173000	">	FABRICACI�N DE TEJIDOS DE PUNTO	</xsl:when>
                                        <xsl:when test=".=	181010	">	FABRICACI�N DE PRENDAS DE VESTIR TEXTILES Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	181020	">	FABRICACI�N DE PRENDAS DE VESTIR DE CUERO NATURAL, ARTIFICIAL, PL�STICO	</xsl:when>
                                        <xsl:when test=".=	181030	">	FABRICACI�N DE ACCESORIOS DE VESTIR	</xsl:when>
                                        <xsl:when test=".=	181040	">	FABRICACI�N DE ROPA DE TRABAJO	</xsl:when>
                                        <xsl:when test=".=	182000	">	ADOBO Y TENIDOS DE PIELES; FABRICACI�N DE ART�CULOS DE PIEL	</xsl:when>
                                        <xsl:when test=".=	191100	">	CURTIDO Y ADOBO DE CUEROS	</xsl:when>
                                        <xsl:when test=".=	191200	">	FABRICACI�N DE MALETAS, BOLSOS DE MANO Y SIMILARES; ART�CULOS DE TALABARTER�A Y GUARNICIONER�A	</xsl:when>
                                        <xsl:when test=".=	192000	">	FABRICACI�N DE CALZADO	</xsl:when>
                                        <xsl:when test=".=	201000	">	ASERRADO Y ACEPILLADURA DE MADERAS	</xsl:when>
                                        <xsl:when test=".=	202100	">	FABRICACI�N DE TABLEROS, PANELES Y HOJAS DE MADERA PARA ENCHAPADO	</xsl:when>
                                        <xsl:when test=".=	202200	">	FABRICACI�N DE PARTES Y PIEZAS DE CARPINTER�A PARA EDIFICIOS Y CONSTRUCCIONES	</xsl:when>
                                        <xsl:when test=".=	202300	">	FABRICACI�N DE RECIPIENTES DE MADERA	</xsl:when>
                                        <xsl:when test=".=	202900	">	FABRICACI�N DE OTROS PRODUCTOS DE MADERA; ART�CULOS DE CORCHO, PAJA Y MATERIALES TRENZABLES	</xsl:when>
                                        <xsl:when test=".=	210110	">	FABRICACI�N DE CELULOSA Y OTRAS PASTAS DE MADERA	</xsl:when>
                                        <xsl:when test=".=	210121	">	FABRICACI�N DE PAPEL DE PERI�DICO	</xsl:when>
                                        <xsl:when test=".=	210129	">	FABRICACI�N DE PAPEL Y CART�N N.C.P.	</xsl:when>
                                        <xsl:when test=".=	210200	">	FABRICACI�N DE PAPEL Y CART�N ONDULADO Y DE ENVASES DE PAPEL Y CART�N	</xsl:when>
                                        <xsl:when test=".=	210900	">	FABRICACI�N DE OTROS ART�CULOS DE PAPEL Y CART�N	</xsl:when>
                                        <xsl:when test=".=	221101	">	EDICI�N PRINCIPALMENTE DE LIBROS	</xsl:when>
                                        <xsl:when test=".=	221109	">	EDICI�N DE FOLLETOS, PARTITURAS Y OTRAS PUBLICACIONES	</xsl:when>
                                        <xsl:when test=".=	221200	">	EDICI�N DE PERI�DICOS, REVISTAS Y PUBLICACIONES PERI�DICAS	</xsl:when>
                                        <xsl:when test=".=	221300	">	EDICI�N DE GRABACIONES	</xsl:when>
                                        <xsl:when test=".=	221900	">	OTRAS ACTIVIDADES DE EDICI�N	</xsl:when>
                                        <xsl:when test=".=	222101	">	IMPRESI�N PRINCIPALMENTE DE LIBROS	</xsl:when>
                                        <xsl:when test=".=	222109	">	OTRAS ACTIVIDADES DE IMPRESI�N N.C.P.	</xsl:when>
                                        <xsl:when test=".=	222200	">	ACTIVIDADES DE SERVICIO RELACIONADA CON LA IMPRESI�N	</xsl:when>
                                        <xsl:when test=".=	223000	">	REPRODUCCI�N DE GRABACIONES	</xsl:when>
                                        <xsl:when test=".=	231000	">	FABRICACI�N DE PRODUCTOS DE HORNOS COQUE	</xsl:when>
                                        <xsl:when test=".=	232000	">	FABRICACI�N DE PRODUCTOS DE REFINACI�N DE PETR�LEO	</xsl:when>
                                        <xsl:when test=".=	233000	">	ELABORACI�N DE COMBUSTIBLE NUCLEAR	</xsl:when>
                                        <xsl:when test=".=	241110	">	FABRICACI�N DE CARB�N VEGETAL, Y BRIQUETAS DE CARB�N VEGETAL	</xsl:when>
                                        <xsl:when test=".=	241190	">	FABRICACI�N DE SUSTANCIAS QU�MICAS B�SICAS, EXCEPTO ABONOS Y COMPUESTOS DE NITR�GENO	</xsl:when>
                                        <xsl:when test=".=	241200	">	FABRICACI�N DE ABONOS Y COMPUESTOS DE NITR�GENO	</xsl:when>
                                        <xsl:when test=".=	241300	">	FABRICACI�N DE PL�STICOS EN FORMAS PRIMARIAS Y DE CAUCHO SINT�TICO	</xsl:when>
                                        <xsl:when test=".=	242100	">	FABRICACI�N DE PLAGUICIDAS Y OTROS PRODUCTOS QU�MICOS DE USO AGROPECUARIO	</xsl:when>
                                        <xsl:when test=".=	242200	">	FABRICACI�N DE PINTURAS, BARNICES Y PRODUCTOS DE REVESTIMIENTO SIMILARES	</xsl:when>
                                        <xsl:when test=".=	242300	">	FABRICACI�N DE PRODUCTOS FARMACEUTICOS, SUSTANCIAS QU�MICAS MEDICINALES Y PRODUCTOS BOT�NICOS	</xsl:when>
                                        <xsl:when test=".=	242400	">	FABRICACIONES DE JABONES Y DETERGENTES, PREPARADOS PARA LIMPIAR, PERFUMES Y PREPARADOS DE TOCADOR	</xsl:when>
                                        <xsl:when test=".=	242910	">	FABRICACI�N DE EXPLOSIVOS Y PRODUCTOS DE PIROTECNIA	</xsl:when>
                                        <xsl:when test=".=	242990	">	FABRICACI�N DE OTROS PRODUCTOS QU�MICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	243000	">	FABRICACI�N DE FIBRAS MANUFACTURADAS	</xsl:when>
                                        <xsl:when test=".=	251110	">	FABRICACI�N DE CUBIERTAS Y C�MARAS DE CAUCHO	</xsl:when>
                                        <xsl:when test=".=	251120	">	RECAUCHADO Y RENOVACI�N DE CUBIERTAS DE CAUCHO	</xsl:when>
                                        <xsl:when test=".=	251900	">	FABRICACI�N DE OTROS PRODUCTOS DE CAUCHO	</xsl:when>
                                        <xsl:when test=".=	252010	">	FABRICACI�N DE PLANCHAS, L�MINAS, CINTAS, TIRAS DE PL�STICO	</xsl:when>
                                        <xsl:when test=".=	252020	">	FABRICACI�N DE TUBOS, MANGUERAS PARA LA CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	252090	">	FABRICACI�N DE OTROS ART�CULOS DE PL�STICO	</xsl:when>
                                        <xsl:when test=".=	261010	">	FABRICACI�N, MANIPULADO Y TRANSFORMACI�N DE VIDRIO PLANO	</xsl:when>
                                        <xsl:when test=".=	261020	">	FABRICACI�N DE VIDRIO HUECO	</xsl:when>
                                        <xsl:when test=".=	261030	">	FABRICACI�N DE FIBRAS DE VIDRIO	</xsl:when>
                                        <xsl:when test=".=	261090	">	FABRICACI�N DE ART�CULOS DE VIDRIO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	269101	">	FABRICACI�N DE PRODUCTOS DE CER�MICA NO REFRACTARIA PARA USO NO ESTRUCTURAL CON FINES ORNAMENTALES	</xsl:when>
                                        <xsl:when test=".=	269109	">	FABRICACI�N DE PRODUCTOS DE CER�MICA NO REFRACTARIA PARA USO NO ESTRUCTURAL N.C.P.	</xsl:when>
                                        <xsl:when test=".=	269200	">	FABRICACI�N DE PRODUCTOS DE CER�MICAS REFRACTARIA	</xsl:when>
                                        <xsl:when test=".=	269300	">	FABRICACI�N DE PRODUCTOS DE ARCILLA Y CER�MICAS NO REFRACTARIAS PARA USO ESTRUCTURAL	</xsl:when>
                                        <xsl:when test=".=	269400	">	FABRICACI�N DE CEMENTO, CAL Y YESO	</xsl:when>
                                        <xsl:when test=".=	269510	">	ELABORACI�N DE HORMIG�N, ART�CULOS DE HORMIG�N Y MORTERO (MEZCLA PARA CONSTRUCCI�N)	</xsl:when>
                                        <xsl:when test=".=	269520	">	FABRICACI�N DE PRODUCTOS DE FIBROCEMENTO Y ASBESTOCEMENTO	</xsl:when>
                                        <xsl:when test=".=	269530	">	FABRICACI�N DE PANELES DE YESO PARA LA CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	269590	">	FABRICACI�N DE ART�CULOS DE CEMENTO Y YESO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	269600	">	CORTE, TALLADO Y ACABADO DE LA PIEDRA	</xsl:when>
                                        <xsl:when test=".=	269910	">	FABRICACI�N DE MEZCLAS BITUMINOSAS A BASE DE ASFALTO, DE BETUNES NATURALES, Y PRODUCTOS SIMILARES	</xsl:when>
                                        <xsl:when test=".=	269990	">	FABRICACI�N DE OTROS PRODUCTOS MINERALES NO MET�LICOS N.C.P	</xsl:when>
                                        <xsl:when test=".=	271000	">	INDUSTRIAS BASICAS DE HIERRO Y ACERO	</xsl:when>
                                        <xsl:when test=".=	272010	">	ELABORACI�N DE PRODUCTOS DE COBRE EN FORMAS PRIMARIAS.	</xsl:when>
                                        <xsl:when test=".=	272020	">	ELABORACI�N DE PRODUCTOS DE ALUMINIO EN FORMAS PRIMARIAS	</xsl:when>
                                        <xsl:when test=".=	272090	">	FABRICACI�N DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE OTROS METALES NO FERROSOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	273100	">	FUNDICI�N DE HIERRO Y ACERO	</xsl:when>
                                        <xsl:when test=".=	273200	">	FUNDICI�N DE METALES NO FERROSOS	</xsl:when>
                                        <xsl:when test=".=	281100	">	FABRICACI�N DE PRODUCTOS MET�LICOS DE USO ESTRUCTURAL	</xsl:when>
                                        <xsl:when test=".=	281211	">	FABRICACI�N DE RECIPIENTES DE GAS COMPRIMIDO O LICUADO	</xsl:when>
                                        <xsl:when test=".=	281219	">	FABRICACI�N DE TANQUES, DEP�SITOS Y RECIPIENTES DE METAL N.C.P.	</xsl:when>
                                        <xsl:when test=".=	281280	">	REPARACI�N DE TANQUES, DEP�SITOS Y RECIPIENTES DE METAL	</xsl:when>
                                        <xsl:when test=".=	281310	">	FABRICACI�N DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCI�N	</xsl:when>
                                        <xsl:when test=".=	281380	">	REPARACI�N DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCI�N CENTRAL	</xsl:when>
                                        <xsl:when test=".=	289100	">	FORJA, PRENSADO, ESTAMPADO Y LAMINADO DE METAL; INCLUYE PULVIMETALURGIA	</xsl:when>
                                        <xsl:when test=".=	289200	">	TRATAMIENTOS Y REVESTIMIENTOS DE METALES; OBRAS DE INGENIER�A MEC�NICA EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	289310	">	FABRICACI�N DE ART�CULOS DE CUCHILLER�A	</xsl:when>
                                        <xsl:when test=".=	289320	">	FABRICACI�N DE HERRAMIENTAS DE MANO Y ART�CULOS DE FERRETER�A	</xsl:when>
                                        <xsl:when test=".=	289910	">	FABRICACI�N DE CABLES, ALAMBRES Y PRODUCTOS DE ALAMBRE	</xsl:when>
                                        <xsl:when test=".=	289990	">	FABRICACI�N DE OTROS PRODUCTOS ELABORADOS DE METAL N.C.P.	</xsl:when>
                                        <xsl:when test=".=	291110	">	FABRICACI�N DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEH�CULOS AUTOMOTORES Y MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	291180	">	REPARACI�N DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEH�CULOS AUTOMOTORES Y MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	291210	">	FABRICACI�N DE BOMBAS, GRIFOS, V�LVULAS, COMPRESORES, SISTEMAS HIDR�ULICOS	</xsl:when>
                                        <xsl:when test=".=	291280	">	REPARACI�N DE BOMBAS, COMPRESORES, SISTEMAS HIDR�ULICOS, V�LVULAS Y ART�CULOS DE GRIFER�A	</xsl:when>
                                        <xsl:when test=".=	291310	">	FABRICACI�N DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISI�N	</xsl:when>
                                        <xsl:when test=".=	291380	">	REPARACI�N DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISI�N	</xsl:when>
                                        <xsl:when test=".=	291410	">	FABRICACI�N DE HORNOS, HOGARES Y QUEMADORES	</xsl:when>
                                        <xsl:when test=".=	291480	">	REPARACI�N DE HORNOS, HOGARES Y QUEMADORES	</xsl:when>
                                        <xsl:when test=".=	291510	">	FABRICACI�N DE EQUIPO DE ELEVACI�N Y MANIPULACI�N	</xsl:when>
                                        <xsl:when test=".=	291580	">	REPARACI�N DE EQUIPO DE ELEVACI�N Y MANIPULACI�N	</xsl:when>
                                        <xsl:when test=".=	291910	">	FABRICACI�N DE OTRO TIPO DE MAQUINARIAS DE USO GENERAL	</xsl:when>
                                        <xsl:when test=".=	291980	">	REPARACI�N OTROS TIPOS DE MAQUINARIA Y EQUIPOS DE USO GENERAL	</xsl:when>
                                        <xsl:when test=".=	292110	">	FABRICACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL	</xsl:when>
                                        <xsl:when test=".=	292180	">	REPARACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL	</xsl:when>
                                        <xsl:when test=".=	292210	">	FABRICACI�N DE M�QUINAS HERRAMIENTAS	</xsl:when>
                                        <xsl:when test=".=	292280	">	REPARACI�N DE M�QUINAS HERRAMIENTAS	</xsl:when>
                                        <xsl:when test=".=	292310	">	FABRICACI�N DE MAQUINARIA METAL�RGICA	</xsl:when>
                                        <xsl:when test=".=	292380	">	REPARACI�N DE MAQUINARIA PARA LA INDUSTRIA METAL�RGICA	</xsl:when>
                                        <xsl:when test=".=	292411	">	FABRICACI�N DE MAQUINARIA PARA MINAS Y CANTERAS Y PARA OBRAS DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	292412	">	FABRICACI�N DE PARTES PARA M�QUINAS DE SONDEO O PERFORACI�N	</xsl:when>
                                        <xsl:when test=".=	292480	">	REPARACI�N DE MAQUINARIA PARA LA EXPLOTACI�N DE PETR�LEO, MINAS, CANTERAS, Y OBRAS DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	292510	">	FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACOS	</xsl:when>
                                        <xsl:when test=".=	292580	">	REPARACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACOS	</xsl:when>
                                        <xsl:when test=".=	292610	">	FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE PRENDAS TEXTILES, PRENDAS DE VESTIR Y CUEROS	</xsl:when>
                                        <xsl:when test=".=	292680	">	REPARACI�N DE MAQUINARIA PARA LA INDUSTRIA TEXTIL, DE LA CONFECCI�N, DEL CUERO Y DEL CALZADO	</xsl:when>
                                        <xsl:when test=".=	292710	">	FABRICACI�N DE ARMAS Y MUNICIONES	</xsl:when>
                                        <xsl:when test=".=	292780	">	REPARACI�N DE ARMAS	</xsl:when>
                                        <xsl:when test=".=	292910	">	FABRICACI�N DE OTROS TIPOS DE MAQUINARIAS DE USO ESPECIAL	</xsl:when>
                                        <xsl:when test=".=	292980	">	REPARACI�N DE OTROS TIPOS DE MAQUINARIA DE USO ESPECIAL	</xsl:when>
                                        <xsl:when test=".=	293000	">	FABRICACI�N DE APARATOS DE USO DOM�STICO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	300010	">	FABRICACI�N Y ARMADO DE COMPUTADORES Y HARDWARE EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	300020	">	FABRICACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD, N.C.P.	</xsl:when>
                                        <xsl:when test=".=	311010	">	FABRICACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS	</xsl:when>
                                        <xsl:when test=".=	311080	">	REPARACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS	</xsl:when>
                                        <xsl:when test=".=	312010	">	FABRICACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL	</xsl:when>
                                        <xsl:when test=".=	312080	">	REPARACI�N DE APARATOS DE DISTRIBUCI�N Y CONTROL	</xsl:when>
                                        <xsl:when test=".=	313000	">	FABRICACI�N DE HILOS Y CABLES AISLADOS	</xsl:when>
                                        <xsl:when test=".=	314000	">	FABRICACI�N DE ACUMULADORES DE PILAS Y BATER�AS PRIMARIAS	</xsl:when>
                                        <xsl:when test=".=	315010	">	FABRICACI�N DE L�MPARAS Y EQUIPO DE ILUMINACI�N	</xsl:when>
                                        <xsl:when test=".=	315080	">	REPARACI�N DE EQUIPO DE ILUMINACI�N	</xsl:when>
                                        <xsl:when test=".=	319010	">	FABRICACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	319080	">	REPARACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	321010	">	FABRICACI�N DE COMPONENTES ELECTR�NICOS	</xsl:when>
                                        <xsl:when test=".=	321080	">	REPARACI�N DE COMPONENTES ELECTR�NICOS	</xsl:when>
                                        <xsl:when test=".=	322010	">	FABRICACI�N DE TRANSMISORES DE RADIO Y TELEVISI�N, APARATOS PARA TELEFON�A Y TELEGRAF�A CON HILOS	</xsl:when>
                                        <xsl:when test=".=	322080	">	REPARACI�N DE TRANSMISORES DE RADIO Y TELEVISI�N, APARATOS PARA TELEFON�A Y TELEGRAF�A CON HILOS	</xsl:when>
                                        <xsl:when test=".=	323000	">	FABRICACI�N DE RECEPTORES (RADIO Y TV); APARATOS DE GRABACI�N Y REPRODUCCI�N (AUDIO Y VIDEO)	</xsl:when>
                                        <xsl:when test=".=	331110	">	FABRICACI�N DE EQUIPO M�DICO Y QUIR�RGICO, Y DE APARATOS ORTOP�DICOS	</xsl:when>
                                        <xsl:when test=".=	331120	">	LABORATORIOS DENTALES	</xsl:when>
                                        <xsl:when test=".=	331180	">	REPARACI�N DE EQUIPO M�DICO Y QUIR�RGICO, Y DE APARATOS ORTOP�DICOS	</xsl:when>
                                        <xsl:when test=".=	331210	">	FABRICACI�N DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES	</xsl:when>
                                        <xsl:when test=".=	331280	">	REPARACI�N DE INSTRUMENTOS Y APARATOS PARA MEDIR, VERIFICAR, ENSAYAR, NAVEGAR Y OTROS FINES	</xsl:when>
                                        <xsl:when test=".=	331310	">	FABRICACI�N DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES	</xsl:when>
                                        <xsl:when test=".=	331380	">	REPARACI�N DE EQUIPOS DE CONTROL DE PROCESOS INDUSTRIALES	</xsl:when>
                                        <xsl:when test=".=	332010	">	FABRICACI�N Y/O REPARACI�N DE LENTES Y ART�CULOS OFTALMOL�GICOS	</xsl:when>
                                        <xsl:when test=".=	332020	">	FABRICACI�N DE INSTRUMENTOS DE OPTICA N.C.P. Y EQUIPOS FOTOGR�FICOS	</xsl:when>
                                        <xsl:when test=".=	332080	">	REPARACI�N DE INSTRUMENTOS DE OPTICA N.C.P Y EQUIPO FOTOGR�FICOS	</xsl:when>
                                        <xsl:when test=".=	333000	">	FABRICACI�N DE RELOJES	</xsl:when>
                                        <xsl:when test=".=	341000	">	FABRICACI�N DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	342000	">	FABRICACI�N DE CARROCER�AS PARA VEH�CULOS AUTOMOTORES; FABRICACI�N DE REMOLQUES Y SEMI REMOLQUES	</xsl:when>
                                        <xsl:when test=".=	343000	">	FABRICACI�N DE PARTES Y ACCESORIOS PARA VEH�CULOS AUTOMOTORES Y SUS MOTORES	</xsl:when>
                                        <xsl:when test=".=	351110	">	CONSTRUCCI�N Y REPARACI�N DE BUQUES; ASTILLEROS	</xsl:when>
                                        <xsl:when test=".=	351120	">	CONSTRUCCI�N DE EMBARCACIONES MENORES	</xsl:when>
                                        <xsl:when test=".=	351180	">	REPARACI�N DE EMBARCACIONES MENORES	</xsl:when>
                                        <xsl:when test=".=	351210	">	CONSTRUCCI�N DE EMBARCACIONES DE RECREO Y DEPORTE	</xsl:when>
                                        <xsl:when test=".=	351280	">	REPARACI�N DE EMBARCACIONES DE RECREO Y DEPORTES	</xsl:when>
                                        <xsl:when test=".=	352000	">	FABRICACI�N DE LOCOMOTORAS Y DE MATERIAL RODANTE PARA FERROCARRILES Y TRANV�AS	</xsl:when>
                                        <xsl:when test=".=	353010	">	FABRICACI�N DE AERONAVES Y NAVES ESPACIALES	</xsl:when>
                                        <xsl:when test=".=	353080	">	REPARACI�N DE AERONAVES Y NAVES ESPACIALES	</xsl:when>
                                        <xsl:when test=".=	359100	">	FABRICACI�N DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	359200	">	FABRICACI�N DE BICICLETAS Y DE SILLONES DE RUEDAS PARA INVALIDOS	</xsl:when>
                                        <xsl:when test=".=	359900	">	FABRICACI�N DE OTROS EQUIPOS DE TRANSPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".=	361010	">	FABRICACI�N DE MUEBLES PRINCIPALMENTE DE MADERA	</xsl:when>
                                        <xsl:when test=".=	361020	">	FABRICACI�N DE OTROS MUEBLES N.C.P., INCLUSO COLCHONES	</xsl:when>
                                        <xsl:when test=".=	369100	">	FABRICACI�N DE JOYAS Y PRODUCTOS CONEXOS	</xsl:when>
                                        <xsl:when test=".=	369200	">	FABRICACI�N DE INSTRUMENTOS DE M�SICA	</xsl:when>
                                        <xsl:when test=".=	369300	">	FABRICACI�N DE ART�CULOS DE DEPORTE	</xsl:when>
                                        <xsl:when test=".=	369400	">	FABRICACI�N DE JUEGOS Y JUGUETES	</xsl:when>
                                        <xsl:when test=".=	369910	">	FABRICACI�N DE PLUMAS Y L�PICES DE TODA CLASE Y ART�CULOS DE ESCRITORIO EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	369920	">	FABRICACI�N DE BROCHAS, ESCOBAS Y CEPILLOS	</xsl:when>
                                        <xsl:when test=".=	369930	">	FABRICACI�N DE F�SFOROS	</xsl:when>
                                        <xsl:when test=".=	369990	">	FABRICACI�N DE ART�CULOS DE OTRAS INDUSTRIAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	371000	">	RECICLAMIENTO DE DESPERDICIOS Y DESECHOS MET�LICOS	</xsl:when>
                                        <xsl:when test=".=	372010	">	RECICLAMIENTO DE PAPEL	</xsl:when>
                                        <xsl:when test=".=	372020	">	RECICLAMIENTO DE VIDRIO	</xsl:when>
                                        <xsl:when test=".=	372090	">	RECICLAMIENTO DE OTROS DESPERDICIOS Y DESECHOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	401011	">	GENERACI�N HIDROEL�CTRICA	</xsl:when>
                                        <xsl:when test=".=	401012	">	GENERACI�N EN CENTRALES TERMOEL�CTRICA DE CICLOS COMBINADOS	</xsl:when>
                                        <xsl:when test=".=	401013	">	GENERACI�N EN OTRAS CENTRALES TERMOEL�CTRICAS	</xsl:when>
                                        <xsl:when test=".=	401019	">	GENERACI�N EN OTRAS CENTRALES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	401020	">	TRANSMISI�N DE ENERG�A EL�CTRICA	</xsl:when>
                                        <xsl:when test=".=	401030	">	DISTRIBUCI�N DE ENERGIA EL�CTRICA	</xsl:when>
                                        <xsl:when test=".=	402000	">	FABRICACI�N DE GAS; DISTRIBUCI�N DE COMBUSTIBLES GASEOSOS POR TUBER�AS	</xsl:when>
                                        <xsl:when test=".=	403000	">	SUMINISTRO DE VAPOR Y AGUA CALIENTE	</xsl:when>
                                        <xsl:when test=".=	410000	">	CAPTACI�N, DEPURACI�N Y DISTRIBUCI�N DE AGUA	</xsl:when>
                                        <xsl:when test=".=	451010	">	PREPARACI�N DEL TERRENO, EXCAVACIONES Y MOVIMIENTOS DE TIERRAS	</xsl:when>
                                        <xsl:when test=".=	451020	">	SERVICIOS DE DEMOLICI�N Y EL DERRIBO DE EDIFICIOS Y OTRAS ESTRUCTURAS	</xsl:when>
                                        <xsl:when test=".=	452010	">	CONSTRUCCI�N DE EDIFICIOS COMPLETOS O DE PARTES DE EDIFICIOS	</xsl:when>
                                        <xsl:when test=".=	452020	">	OBRAS DE INGENIER�A	</xsl:when>
                                        <xsl:when test=".=	453000	">	ACONDICIONAMIENTO DE EDIFICIOS	</xsl:when>
                                        <xsl:when test=".=	454000	">	OBRAS MENORES EN CONSTRUCCI�N (CONTRATISTAS, ALBANILES, CARPINTEROS)	</xsl:when>
                                        <xsl:when test=".=	455000	">	ALQUILER DE EQUIPO DE CONSTRUCCI�N O DEMOLICI�N DOTADO DE OPERARIOS	</xsl:when>
                                        <xsl:when test=".=	501010	">	VENTA AL POR MAYOR DE VEH�CULOS AUTOMOTORES (IMPORTACI�N, DISTRIBUCI�N) EXCEPTO MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	501020	">	VENTA O COMPRAVENTA AL POR MENOR DE VEH�CULOS AUTOMOTORES NUEVOS O USADOS; EXCEPTO MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	502010	">	SERVICIO DE LAVADO DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	502020	">	SERVICIOS DE REMOLQUE DE VEH�CULOS (GRUAS)	</xsl:when>
                                        <xsl:when test=".=	502080	">	MANTENIMIENTO Y REPARACI�N DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	503000	">	VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	504010	">	VENTA DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	504020	">	VENTA DE PIEZAS Y ACCESORIOS DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	504080	">	REPARACI�N DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".=	505000	">	VENTA AL POR MENOR DE COMBUSTIBLE PARA AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	511010	">	CORRETAJE DE PRODUCTOS AGR�COLAS	</xsl:when>
                                        <xsl:when test=".=	511020	">	CORRETAJE DE GANADO (FERIAS DE GANADO)	</xsl:when>
                                        <xsl:when test=".=	511030	">	OTROS TIPOS DE CORRETAJES O REMATES N.C.P. (NO INCLUYE SERVICIOS DE MARTILLERO)	</xsl:when>
                                        <xsl:when test=".=	512110	">	VENTA AL POR MAYOR DE ANIMALES VIVOS	</xsl:when>
                                        <xsl:when test=".=	512120	">	VENTA AL POR MAYOR DE PRODUCTOS PECUARIOS (LANAS, PIELES, CUEROS SIN PROCESAR); EXCEPTO ALIMENTOS	</xsl:when>
                                        <xsl:when test=".=	512130	">	VENTA AL POR MAYOR DE MATERIAS PRIMAS AGR�COLAS	</xsl:when>
                                        <xsl:when test=".=	512210	">	MAYORISTA DE FRUTAS Y VERDURAS	</xsl:when>
                                        <xsl:when test=".=	512220	">	MAYORISTAS DE CARNES	</xsl:when>
                                        <xsl:when test=".=	512230	">	MAYORISTAS DE PRODUCTOS DEL MAR (PESCADO, MARISCOS, ALGAS)	</xsl:when>
                                        <xsl:when test=".=	512240	">	MAYORISTAS DE VINOS Y BEBIDAS ALCOH�LICAS Y DE FANTAS�A	</xsl:when>
                                        <xsl:when test=".=	512250	">	VENTA AL POR MAYOR DE CONFITES	</xsl:when>
                                        <xsl:when test=".=	512260	">	VENTA AL POR MAYOR DE TABACO Y PRODUCTOS DERIVADOS	</xsl:when>
                                        <xsl:when test=".=	512290	">	VENTA AL POR MAYOR DE HUEVOS, LECHE, ABARROTES, Y OTROS ALIMENTOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	513100	">	VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO	</xsl:when>
                                        <xsl:when test=".=	513910	">	VENTA AL POR MAYOR DE MUEBLES	</xsl:when>
                                        <xsl:when test=".=	513920	">	VENTA AL POR MAYOR DE ART�CULOS EL�CTRICOS Y ELECTR�NICOS PARA EL HOGAR	</xsl:when>
                                        <xsl:when test=".=	513930	">	VENTA AL POR MAYOR DE ART�CULOS DE PERFUMER�A, COSM�TICOS, JABONES Y PRODUCTOS DE LIMPIEZA	</xsl:when>
                                        <xsl:when test=".=	513940	">	VENTA AL POR MAYOR DE PAPEL Y CART�N	</xsl:when>
                                        <xsl:when test=".=	513951	">	VENTA AL POR MAYOR DE LIBROS	</xsl:when>
                                        <xsl:when test=".=	513952	">	VENTA AL POR MAYOR DE REVISTAS Y PERI�DICOS	</xsl:when>
                                        <xsl:when test=".=	513960	">	VENTA AL POR MAYOR DE PRODUCTOS FARMACEUTICOS	</xsl:when>
                                        <xsl:when test=".=	513970	">	VENTA AL POR MAYOR DE INSTRUMENTOS CIENT�FICOS Y QUIR�RGICOS	</xsl:when>
                                        <xsl:when test=".=	513990	">	VENTA AL POR MAYOR DE OTROS ENSERES DOM�STICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	514110	">	VENTA AL POR MAYOR DE COMBUSTIBLES L�QUIDOS	</xsl:when>
                                        <xsl:when test=".=	514120	">	VENTA AL POR MAYOR DE COMBUSTIBLES S�LIDOS	</xsl:when>
                                        <xsl:when test=".=	514130	">	VENTA AL POR MAYOR DE COMBUSTIBLES GASEOSOS	</xsl:when>
                                        <xsl:when test=".=	514140	">	VENTA AL POR MAYOR DE PRODUCTOS CONEXOS A LOS COMBUSTIBLES	</xsl:when>
                                        <xsl:when test=".=	514200	">	VENTA AL POR MAYOR DE METALES Y MINERALES METAL�FEROS	</xsl:when>
                                        <xsl:when test=".=	514310	">	VENTA AL POR MAYOR DE MADERA NO TRABAJADA Y PRODUCTOS RESULTANTES DE SU ELABORACI�N PRIMARIA	</xsl:when>
                                        <xsl:when test=".=	514320	">	VENTA AL POR MAYOR DE MATERIALES DE CONSTRUCCI�N, ART�CULOS DE FERRETER�A Y RELACIONADOS	</xsl:when>
                                        <xsl:when test=".=	514910	">	VENTA AL POR MAYOR DE PRODUCTOS QU�MICOS	</xsl:when>
                                        <xsl:when test=".=	514920	">	VENTA AL POR MAYOR DE DESECHOS MET�LICOS (CHATARRA)	</xsl:when>
                                        <xsl:when test=".=	514930	">	VENTA AL POR MAYOR DE INSUMOS VETERINARIOS	</xsl:when>
                                        <xsl:when test=".=	514990	">	VENTA AL POR MAYOR DE OTROS PRODUCTOS INTERMEDIOS, DESPERDICIOS Y DESECHOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	515001	">	VENTA AL POR MAYOR DE MAQUINARIA AGR�COLA Y FORESTAL	</xsl:when>
                                        <xsl:when test=".=	515002	">	VENTA AL POR MAYOR DE MAQUINARIA METAL�RGICA	</xsl:when>
                                        <xsl:when test=".=	515003	">	VENTA AL POR MAYOR DE MAQUINARIA PARA LA MINER�A	</xsl:when>
                                        <xsl:when test=".=	515004	">	VENTA AL POR MAYOR DE MAQUINARIA PARA LA CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	515005	">	VENTA AL POR MAYOR DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACO	</xsl:when>
                                        <xsl:when test=".=	515006	">	VENTA AL POR MAYOR DE MAQUINARIA PARA TEXTILES Y CUEROS	</xsl:when>
                                        <xsl:when test=".=	515007	">	VENTA AL POR MAYOR DE M�QUINAS Y EQUIPOS DE OFICINA; INCLUYE MATERIALES CONEXOS	</xsl:when>
                                        <xsl:when test=".=	515008	">	VENTA AL POR MAYOR DE MAQUINARIA Y EQUIPO DE TRANSPORTE EXCEPTO VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	515009	">	VENTA AL POR MAYOR DE MAQUINARIA, HERRAMIENTAS, EQUIPO Y MATERIALES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	519000	">	VENTA AL POR MAYOR DE OTROS PRODUCTOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	521111	">	GRANDES ESTABLECIMIENTOS (VENTA DE ALIMENTOS); HIPERMERCADOS	</xsl:when>
                                        <xsl:when test=".=	521112	">	ALMACENES MEDIANOS (VENTA DE ALIMENTOS); SUPERMERCADOS, MINIMARKETS	</xsl:when>
                                        <xsl:when test=".=	521120	">	ALMACENES PEQUENOS (VENTA DE ALIMENTOS)	</xsl:when>
                                        <xsl:when test=".=	521200	">	GRANDES TIENDAS - PRODUCTOS DE FERRETER�A Y PARA EL HOGAR	</xsl:when>
                                        <xsl:when test=".=	521300	">	GRANDES TIENDAS - VESTUARIO Y PRODUCTOS PARA EL HOGAR	</xsl:when>
                                        <xsl:when test=".=	521900	">	VENTA AL POR MENOR DE OTROS PRODUCTOS EN PEQUENOS ALMACENES NO ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".=	522010	">	VENTA AL POR MENOR DE BEBIDAS Y LICORES (BOTILLER�AS)	</xsl:when>
                                        <xsl:when test=".=	522020	">	VENTA AL POR MENOR DE CARNES (ROJAS, BLANCAS, OTRAS) PRODUCTOS C�RNICOS Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	522030	">	COMERCIO AL POR MENOR DE VERDURAS Y FRUTAS (VERDULER�A)	</xsl:when>
                                        <xsl:when test=".=	522040	">	VENTA AL POR MENOR DE PESCADOS, MARISCOS Y PRODUCTOS CONEXOS	</xsl:when>
                                        <xsl:when test=".=	522050	">	VENTA AL POR MENOR DE PRODUCTOS DE PANADER�A Y PASTELER�A	</xsl:when>
                                        <xsl:when test=".=	522060	">	VENTA AL POR MENOR DE ALIMENTOS PARA MASCOTAS Y ANIMALES EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	522070	">	VENTA AL POR MENOR DE AVES Y HUEVOS	</xsl:when>
                                        <xsl:when test=".=	522090	">	VENTA AL POR MENOR DE PRODUCTOS DE CONFITER�AS, CIGARRILLOS, Y OTROS	</xsl:when>
                                        <xsl:when test=".=	523111	">	FARMACIAS - PERTENECIENTES A CADENA DE ESTABLECIMIENTOS	</xsl:when>
                                        <xsl:when test=".=	523112	">	FARMACIAS INDEPENDIENTES	</xsl:when>
                                        <xsl:when test=".=	523120	">	VENTA AL POR MENOR DE PRODUCTOS MEDICINALES	</xsl:when>
                                        <xsl:when test=".=	523130	">	VENTA AL POR MENOR DE ART�CULOS ORTOP�DICOS	</xsl:when>
                                        <xsl:when test=".=	523140	">	VENTA AL POR MENOR DE ART�CULOS DE TOCADOR Y COSM�TICOS	</xsl:when>
                                        <xsl:when test=".=	523210	">	VENTA AL POR MENOR DE CALZADO	</xsl:when>
                                        <xsl:when test=".=	523220	">	VENTA AL POR MENOR DE PRENDAS DE VESTIR EN GENERAL, INCLUYE ACCESORIOS	</xsl:when>
                                        <xsl:when test=".=	523230	">	VENTA AL POR MENOR DE LANAS, HILOS Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	523240	">	VENTA AL POR MENOR DE MALETER�AS, TALABARTER�AS Y ART�CULOS DE CUERO	</xsl:when>
                                        <xsl:when test=".=	523250	">	VENTA AL POR MENOR DE ROPA INTERIOR Y PRENDAS DE USO PERSONAL	</xsl:when>
                                        <xsl:when test=".=	523290	">	COMERCIO AL POR MENOR DE TEXTILES PARA EL HOGAR Y OTROS PRODUCTOS TEXTILES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	523310	">	VENTA AL POR MENOR DE ART�CULOS ELECTRODOM�STICOS Y ELECTR�NICOS PARA EL HOGAR	</xsl:when>
                                        <xsl:when test=".=	523320	">	VENTA AL POR MENOR DE CRISTALES, LOZAS, PORCELANA, MENAJE (CRISTALER�AS)	</xsl:when>
                                        <xsl:when test=".=	523330	">	VENTA AL POR MENOR DE MUEBLES; INCLUYE COLCHONES	</xsl:when>
                                        <xsl:when test=".=	523340	">	VENTA AL POR MENOR DE INSTRUMENTOS MUSICALES (CASA DE M�SICA)	</xsl:when>
                                        <xsl:when test=".=	523350	">	VENTA AL POR MENOR DE DISCOS, CASSETTES, DVD Y VIDEOS	</xsl:when>
                                        <xsl:when test=".=	523360	">	VENTA AL POR MENOR DE L�MPARAS, APLIQU�S Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	523390	">	VENTA AL POR MENOR DE APARATOS, ART�CULOS, EQUIPO DE USO DOM�STICO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	523410	">	VENTA AL POR MENOR DE ART�CULOS DE FERRETER�A Y MATERIALES DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".=	523420	">	VENTA AL POR MENOR DE PINTURAS, BARNICES Y LACAS	</xsl:when>
                                        <xsl:when test=".=	523430	">	COMERCIO AL POR MENOR DE PRODUCTOS DE VIDRIO	</xsl:when>
                                        <xsl:when test=".=	523911	">	COMERCIO AL POR MENOR DE ART�CULOS FOTOGR�FICOS	</xsl:when>
                                        <xsl:when test=".=	523912	">	COMERCIO AL POR MENOR DE ART�CULOS �PTICOS	</xsl:when>
                                        <xsl:when test=".=	523921	">	COMERCIO POR MENOR DE JUGUETES	</xsl:when>
                                        <xsl:when test=".=	523922	">	COMERCIO AL POR MENOR DE LIBROS	</xsl:when>
                                        <xsl:when test=".=	523923	">	COMERCIO AL POR MENOR DE REVISTAS Y DIARIOS	</xsl:when>
                                        <xsl:when test=".=	523924	">	COMERCIO DE ART�CULOS DE SUMINISTROS DE OFICINAS Y ART�CULOS DE ESCRITORIO EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	523930	">	COMERCIO AL POR MENOR DE COMPUTADORAS, SOFTWARES Y SUMINISTROS	</xsl:when>
                                        <xsl:when test=".=	523941	">	COMERCIO AL POR MENOR DE ARMER�AS, ART�CULOS DE CAZA Y PESCA	</xsl:when>
                                        <xsl:when test=".=	523942	">	COMERCIO AL POR MENOR DE BICICLETAS Y SUS REPUESTOS	</xsl:when>
                                        <xsl:when test=".=	523943	">	COMERCIO AL POR MENOR DE ART�CULOS DEPORTIVOS	</xsl:when>
                                        <xsl:when test=".=	523950	">	COMERCIO AL POR MENOR DE ART�CULOS DE JOYER�A, FANTAS�AS Y RELOJER�AS	</xsl:when>
                                        <xsl:when test=".=	523961	">	VENTA AL POR MENOR DE GAS LICUADO EN BOMBONAS	</xsl:when>
                                        <xsl:when test=".=	523969	">	VENTA AL POR MENOR DE CARB�N, LENA Y OTROS COMBUSTIBLES DE USO DOM�STICO	</xsl:when>
                                        <xsl:when test=".=	523991	">	COMERCIO AL POR MENOR DE ART�CULOS T�PICOS (ARTESAN�AS)	</xsl:when>
                                        <xsl:when test=".=	523992	">	VENTA AL POR MENOR DE FLORES, PLANTAS, �RBOLES, SEMILLAS, ABONOS	</xsl:when>
                                        <xsl:when test=".=	523993	">	VENTA AL POR MENOR DE MASCOTAS Y ACCESORIOS	</xsl:when>
                                        <xsl:when test=".=	523999	">	VENTAS AL POR MENOR DE OTROS PRODUCTOS EN ALMACENES ESPECIALIZADOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	524010	">	COMERCIO AL POR MENOR DE ANTIGUEDADES	</xsl:when>
                                        <xsl:when test=".=	524020	">	COMERCIO AL POR MENOR DE ROPA USADA	</xsl:when>
                                        <xsl:when test=".=	524090	">	COMERCIO AL POR MENOR DE ART�CULOS Y ARTEFACTOS USADOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	525110	">	VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA POR CORREO	</xsl:when>
                                        <xsl:when test=".=	525120	">	VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V�A TELEF�NICA	</xsl:when>
                                        <xsl:when test=".=	525130	">	VENTA AL POR MENOR EN EMPRESAS DE VENTA A DISTANCIA V�A INTERNET; COMERCIO ELECTR�NICO	</xsl:when>
                                        <xsl:when test=".=	525200	">	VENTA AL POR MENOR EN PUESTOS DE VENTA Y MERCADOS	</xsl:when>
                                        <xsl:when test=".=	525911	">	VENTA AL POR MENOR REALIZADA POR INDEPENDIENTES EN TRANSPORTE P�BLICO (LEY 20.388)	</xsl:when>
                                        <xsl:when test=".=	525919	">	VENTA AL POR MENOR NO REALIZADA EN ALMACENES DE PRODUCTOS PROPIOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	525920	">	M�QUINAS EXPENDEDORAS	</xsl:when>
                                        <xsl:when test=".=	525930	">	VENTA AL POR MENOR A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA	</xsl:when>
                                        <xsl:when test=".=	525990	">	OTROS TIPOS DE VENTA AL POR MENOR NO REALIZADA EN ALMACENES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	526010	">	REPARACI�N DE CALZADO Y OTROS ART�CULOS DE CUERO	</xsl:when>
                                        <xsl:when test=".=	526020	">	REPARACIONES EL�CTRICAS Y ELECTR�NICAS	</xsl:when>
                                        <xsl:when test=".=	526030	">	REPARACI�N DE RELOJES Y JOYAS	</xsl:when>
                                        <xsl:when test=".=	526090	">	OTRAS REPARACIONES DE EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	551010	">	HOTELES	</xsl:when>
                                        <xsl:when test=".=	551020	">	MOTELES	</xsl:when>
                                        <xsl:when test=".=	551030	">	RESIDENCIALES	</xsl:when>
                                        <xsl:when test=".=	551090	">	OTROS TIPOS DE HOSPEDAJE TEMPORAL COMO CAMPING, ALBERGUES, POSADAS, REFUGIOS Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	552010	">	RESTAURANTES	</xsl:when>
                                        <xsl:when test=".=	552020	">	ESTABLECIMIENTOS DE COMIDA R�PIDA (BARES, FUENTES DE SODA, GELATER�AS, PIZZER�AS Y SIMILARES)	</xsl:when>
                                        <xsl:when test=".=	552030	">	CASINOS Y CLUBES SOCIALES	</xsl:when>
                                        <xsl:when test=".=	552040	">	SERVICIOS DE COMIDA PREPARADA EN FORMA INDUSTRIAL	</xsl:when>
                                        <xsl:when test=".=	552050	">	SERVICIOS DE BANQUETES, BODAS Y OTRAS CELEBRACIONES	</xsl:when>
                                        <xsl:when test=".=	552090	">	SERVICIOS DE OTROS ESTABLECIMIENTOS QUE EXPENDEN COMIDAS Y BEBIDAS	</xsl:when>
                                        <xsl:when test=".=	601001	">	TRANSPORTE INTERURBANO DE PASAJEROS POR FERROCARRILES	</xsl:when>
                                        <xsl:when test=".=	601002	">	TRANSPORTE DE CARGA POR FERROCARRILES	</xsl:when>
                                        <xsl:when test=".=	602110	">	TRANSPORTE URBANO DE PASAJEROS V�A FERROCARRIL (INCLUYE METRO)	</xsl:when>
                                        <xsl:when test=".=	602120	">	TRANSPORTE URBANO DE PASAJEROS V�A AUTOBUS (LOCOMOCI�N COLECTIVA)	</xsl:when>
                                        <xsl:when test=".=	602130	">	TRANSPORTE INTERURBANO DE PASAJEROS V�A AUTOBUS	</xsl:when>
                                        <xsl:when test=".=	602140	">	TRANSPORTE URBANO DE PASAJEROS V�A TAXI COLECTIVO	</xsl:when>
                                        <xsl:when test=".=	602150	">	SERVICIOS DE TRANSPORTE ESCOLAR	</xsl:when>
                                        <xsl:when test=".=	602160	">	SERVICIOS DE TRANSPORTE DE TRABAJADORES	</xsl:when>
                                        <xsl:when test=".=	602190	">	OTROS TIPOS DE TRANSPORTE REGULAR DE PASAJEROS POR V�A TERRESTRE N.C.P.	</xsl:when>
                                        <xsl:when test=".=	602210	">	TRANSPORTES POR TAXIS LIBRES Y RADIOTAXIS	</xsl:when>
                                        <xsl:when test=".=	602220	">	SERVICIOS DE TRANSPORTE A TURISTAS	</xsl:when>
                                        <xsl:when test=".=	602230	">	TRANSPORTE DE PASAJEROS EN VEH�CULOS DE TRACCI�N HUMANA Y ANIMAL	</xsl:when>
                                        <xsl:when test=".=	602290	">	OTROS TIPOS DE TRANSPORTE NO REGULAR DE PASAJEROS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	602300	">	TRANSPORTE DE CARGA POR CARRETERA	</xsl:when>
                                        <xsl:when test=".=	603000	">	TRANSPORTE POR TUBER�AS	</xsl:when>
                                        <xsl:when test=".=	611001	">	TRANSPORTE MAR�TIMO Y DE CABOTAJE DE PASAJEROS	</xsl:when>
                                        <xsl:when test=".=	611002	">	TRANSPORTE MAR�TIMO Y DE CABOTAJE DE CARGA	</xsl:when>
                                        <xsl:when test=".=	612001	">	TRANSPORTE DE PASAJEROS POR V�AS DE NAVEGACI�N INTERIORES	</xsl:when>
                                        <xsl:when test=".=	612002	">	TRANSPORTE DE CARGA POR V�AS DE NAVEGACI�N INTERIORES	</xsl:when>
                                        <xsl:when test=".=	621010	">	TRANSPORTE REGULAR POR V�A A�REA DE PASAJEROS	</xsl:when>
                                        <xsl:when test=".=	621020	">	TRANSPORTE REGULAR POR V�A A�REA DE CARGA	</xsl:when>
                                        <xsl:when test=".=	622001	">	TRANSPORTE NO REGULAR POR V�A A�REA DE PASAJEROS	</xsl:when>
                                        <xsl:when test=".=	622002	">	TRANSPORTE NO REGULAR POR V�A A�REA DE CARGA	</xsl:when>
                                        <xsl:when test=".=	630100	">	MANIPULACI�N DE LA CARGA	</xsl:when>
                                        <xsl:when test=".=	630200	">	SERVICIOS DE ALMACENAMIENTO Y DEP�SITO	</xsl:when>
                                        <xsl:when test=".=	630310	">	TERMINALES TERRESTRES DE PASAJEROS	</xsl:when>
                                        <xsl:when test=".=	630320	">	ESTACIONAMIENTO DE VEH�CULOS Y PARQU�METROS	</xsl:when>
                                        <xsl:when test=".=	630330	">	PUERTOS Y AEROPUERTOS	</xsl:when>
                                        <xsl:when test=".=	630340	">	SERVICIOS PRESTADOS POR CONCESIONARIOS DE CARRETERAS	</xsl:when>
                                        <xsl:when test=".=	630390	">	OTRAS ACTIVIDADES CONEXAS AL TRANSPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".=	630400	">	AGENCIAS Y ORGANIZADORES DE VIAJES; ACTIVIDADES DE ASISTENCIA A TURISTAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	630910	">	AGENCIAS DE ADUANAS	</xsl:when>
                                        <xsl:when test=".=	630920	">	AGENCIAS DE TRANSPORTE	</xsl:when>
                                        <xsl:when test=".=	641100	">	ACTIVIDADES POSTALES NACIONALES	</xsl:when>
                                        <xsl:when test=".=	641200	">	ACTIVIDADES DE CORREO DISTINTAS DE LAS ACTIVIDADES POSTALES NACIONALES	</xsl:when>
                                        <xsl:when test=".=	642010	">	SERVICIOS DE TELEFON�A FIJA	</xsl:when>
                                        <xsl:when test=".=	642020	">	SERVICIOS DE TELEFON�A M�VIL	</xsl:when>
                                        <xsl:when test=".=	642030	">	PORTADORES TELEF�NICOS (LARGA DISTANCIA NACIONAL E INTERNACIONAL)	</xsl:when>
                                        <xsl:when test=".=	642040	">	SERVICIOS DE TELEVISI�N NO ABIERTA	</xsl:when>
                                        <xsl:when test=".=	642050	">	PROVEEDORES DE INTERNET	</xsl:when>
                                        <xsl:when test=".=	642061	">	CENTROS DE LLAMADOS; INCLUYE ENV�O DE FAX	</xsl:when>
                                        <xsl:when test=".=	642062	">	CENTROS DE ACCESO A INTERNET	</xsl:when>
                                        <xsl:when test=".=	642090	">	OTROS SERVICIOS DE TELECOMUNICACIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	651100	">	BANCA CENTRAL	</xsl:when>
                                        <xsl:when test=".=	651910	">	BANCOS	</xsl:when>
                                        <xsl:when test=".=	651920	">	FINANCIERAS	</xsl:when>
                                        <xsl:when test=".=	651990	">	OTROS TIPOS DE INTERMEDIACI�N MONETARIA N.C.P.	</xsl:when>
                                        <xsl:when test=".=	659110	">	LEASING FINANCIERO	</xsl:when>
                                        <xsl:when test=".=	659120	">	LEASING HABITACIONAL	</xsl:when>
                                        <xsl:when test=".=	659210	">	FINANCIAMIENTO DEL FOMENTO DE LA PRODUCCI�N	</xsl:when>
                                        <xsl:when test=".=	659220	">	ACTIVIDADES DE CR�DITO PRENDARIO	</xsl:when>
                                        <xsl:when test=".=	659231	">	FACTORING	</xsl:when>
                                        <xsl:when test=".=	659232	">	SECURITIZADORAS	</xsl:when>
                                        <xsl:when test=".=	659290	">	OTROS INSTITUCIONES FINANCIERAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	659911	">	ADMINISTRADORAS DE FONDOS DE INVERSI�N	</xsl:when>
                                        <xsl:when test=".=	659912	">	ADMINISTRADORAS DE FONDOS MUTUOS	</xsl:when>
                                        <xsl:when test=".=	659913	">	ADMINISTRADORAS DE FICES (FONDOS DE INVERSI�N DE CAPITAL EXTRANJERO)	</xsl:when>
                                        <xsl:when test=".=	659914	">	ADMINISTRADORAS DE FONDOS PARA LA VIVIENDA	</xsl:when>
                                        <xsl:when test=".=	659915	">	ADMINISTRADORAS DE FONDOS PARA OTROS FINES Y/O GENERALES	</xsl:when>
                                        <xsl:when test=".=	659920	">	SOCIEDADES DE INVERSI�N Y RENTISTAS DE CAPITALES MOBILIARIOS EN GENERAL	</xsl:when>
                                        <xsl:when test=".=	660101	">	PLANES DE SEGURO DE VIDA	</xsl:when>
                                        <xsl:when test=".=	660102	">	PLANES DE REASEGUROS DE VIDA	</xsl:when>
                                        <xsl:when test=".=	660200	">	ADMINISTRADORAS DE FONDOS DE PENSIONES (AFP)	</xsl:when>
                                        <xsl:when test=".=	660301	">	PLANES DE SEGUROS GENERALES	</xsl:when>
                                        <xsl:when test=".=	660302	">	PLANES DE REASEGUROS GENERALES	</xsl:when>
                                        <xsl:when test=".=	660400	">	ISAPRES	</xsl:when>
                                        <xsl:when test=".=	671100	">	ADMINISTRACI�N DE MERCADOS FINANCIEROS	</xsl:when>
                                        <xsl:when test=".=	671210	">	CORREDORES DE BOLSA	</xsl:when>
                                        <xsl:when test=".=	671220	">	AGENTES DE VALORES	</xsl:when>
                                        <xsl:when test=".=	671290	">	OTROS SERVICIOS DE CORRETAJE	</xsl:when>
                                        <xsl:when test=".=	671910	">	C�MARA DE COMPENSACI�N	</xsl:when>
                                        <xsl:when test=".=	671921	">	ADMINISTRADORA DE TARJETAS DE CR�DITO	</xsl:when>
                                        <xsl:when test=".=	671929	">	EMPRESAS DE ASESOR�A, CONSULTOR�A FINANCIERA Y DE APOYO AL GIRO	</xsl:when>
                                        <xsl:when test=".=	671930	">	CLASIFICADORES DE RIESGOS	</xsl:when>
                                        <xsl:when test=".=	671940	">	CASAS DE CAMBIO Y OPERADORES DE DIVISA	</xsl:when>
                                        <xsl:when test=".=	671990	">	OTRAS ACTIVIDADES AUXILIARES DE LA INTERMEDIACI�N FINANCIERA N.C.P.	</xsl:when>
                                        <xsl:when test=".=	672010	">	CORREDORES DE SEGUROS	</xsl:when>
                                        <xsl:when test=".=	672020	">	AGENTES Y LIQUIDADORES DE SEGUROS	</xsl:when>
                                        <xsl:when test=".=	672090	">	OTRAS ACTIVIDADES AUXILIARES DE LA FINANCIACI�N DE PLANES DE SEGUROS Y DE PENSIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	701001	">	ARRIENDO DE INMUEBLES AMOBLADOS O CON EQUIPOS Y MAQUINARIAS	</xsl:when>
                                        <xsl:when test=".=	701009	">	COMPRA, VENTA Y ALQUILER (EXCEPTO AMOBLADOS) DE INMUEBLES PROPIOS O ARRENDADOS	</xsl:when>
                                        <xsl:when test=".=	702000	">	CORREDORES DE PROPIEDADES	</xsl:when>
                                        <xsl:when test=".=	711101	">	ALQUILER DE AUTOS Y CAMIONETAS SIN CHOFER	</xsl:when>
                                        <xsl:when test=".=	711102	">	ALQUILER DE OTROS EQUIPOS DE TRANSPORTE POR V�A TERRESTRE SIN OPERARIOS	</xsl:when>
                                        <xsl:when test=".=	711200	">	ALQUILER DE TRANSPORTE POR V�A ACU�TICA SIN TRIPULACI�N	</xsl:when>
                                        <xsl:when test=".=	711300	">	ALQUILER DE EQUIPO DE TRANSPORTE POR V�A A�REA SIN TRIPULANTES	</xsl:when>
                                        <xsl:when test=".=	712100	">	ALQUILER DE MAQUINARIA Y EQUIPO AGROPECUARIO	</xsl:when>
                                        <xsl:when test=".=	712200	">	ALQUILER DE MAQUINARIA Y EQUIPO DE CONSTRUCCI�N E INGENIER�A CIVIL	</xsl:when>
                                        <xsl:when test=".=	712300	">	ALQUILER DE MAQUINARIA Y EQUIPO DE OFICINA (SIN OPERARIOS NI SERVICIO ADMINISTRATIVO)	</xsl:when>
                                        <xsl:when test=".=	712900	">	ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	713010	">	ALQUILER DE BICICLETAS Y ART�CULOS PARA DEPORTES	</xsl:when>
                                        <xsl:when test=".=	713020	">	ARRIENDO DE VIDEOS, JUEGOS DE VIDEO, Y EQUIPOS REPRODUCTORES DE VIDEO, M�SICA Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	713030	">	ALQUILER DE MOBILIARIO PARA EVENTOS (SILLAS, MESAS, MESONES, VAJILLAS, TOLDOS Y RELACIONADOS)	</xsl:when>
                                        <xsl:when test=".=	713090	">	ALQUILER DE OTROS EFECTOS PERSONALES Y ENSERES DOM�STICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	722000	">	ASESORES Y CONSULTORES EN INFORM�TICA (SOFTWARE)	</xsl:when>
                                        <xsl:when test=".=	724000	">	PROCESAMIENTO DE DATOS Y ACTIVIDADES RELACIONADAS CON BASES DE DATOS	</xsl:when>
                                        <xsl:when test=".=	726000	">	EMPRESAS DE SERVICIOS INTEGRALES DE INFORM�TICA	</xsl:when>
                                        <xsl:when test=".=	725000	">	MANTENIMIENTO Y REPARACI�N DE MAQUINARIA DE OFICINA, CONTABILIDAD E INFORM�TICA	</xsl:when>
                                        <xsl:when test=".=	731000	">	INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS NATURALES Y LA INGENIER�A	</xsl:when>
                                        <xsl:when test=".=	732000	">	INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS SOCIALES Y LAS HUMANIDADES	</xsl:when>
                                        <xsl:when test=".=	741110	">	SERVICIOS JUR�DICOS	</xsl:when>
                                        <xsl:when test=".=	741120	">	SERVICIO NOTARIAL	</xsl:when>
                                        <xsl:when test=".=	741130	">	CONSERVADOR DE BIENES RAICES	</xsl:when>
                                        <xsl:when test=".=	741140	">	RECEPTORES JUDICIALES	</xsl:when>
                                        <xsl:when test=".=	741190	">	ARBITRAJES, S�NDICOS, PERITOS Y OTROS	</xsl:when>
                                        <xsl:when test=".=	741200	">	ACTIVIDADES DE CONTABILIDAD, TENEDUR�A DE LIBROS Y AUDITOR�A; ASESORAMIENTOS TRIBUTARIOS	</xsl:when>
                                        <xsl:when test=".=	741300	">	INVESTIGACI�N DE MERCADOS Y REALIZACI�N DE ENCUESTAS DE OPINI�N P�BLICA	</xsl:when>
                                        <xsl:when test=".=	741400	">	ACTIVIDADES DE ASESORAMIENTO EMPRESARIAL Y EN MATERIA DE GESTI�N	</xsl:when>
                                        <xsl:when test=".=	742110	">	SERVICIOS DE ARQUITECTURA Y T�CNICO RELACIONADO	</xsl:when>
                                        <xsl:when test=".=	742121	">	EMPRESAS DE SERVICIOS GEOL�GICOS Y DE PROSPECCI�N	</xsl:when>
                                        <xsl:when test=".=	742122	">	SERVICIOS PROFESIONALES EN GEOLOG�A Y PROSPECCI�N	</xsl:when>
                                        <xsl:when test=".=	742131	">	EMPRESAS DE SERVICIOS DE TOPOGRAF�A Y AGRIMENSURA	</xsl:when>
                                        <xsl:when test=".=	742132	">	SERVICIOS PROFESIONALES DE TOPOGRAF�A Y AGRIMENSURA	</xsl:when>
                                        <xsl:when test=".=	742141	">	SERVICIOS DE INGENIER�A PRESTADOS POR EMPRESAS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	742142	">	SERVICIOS DE INGENIER�A PRESTADOS POR PROFESIONALES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	742190	">	OTROS SERVICIOS DESARROLLADOS POR PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	742210	">	SERVICIO DE REVISI�N T�CNICA DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".=	742290	">	OTROS SERVICIOS DE ENSAYOS Y ANALISIS T�CNICOS	</xsl:when>
                                        <xsl:when test=".=	743001	">	EMPRESAS DE PUBLICIDAD	</xsl:when>
                                        <xsl:when test=".=	743002	">	SERVICIOS PERSONALES EN PUBLICIDAD	</xsl:when>
                                        <xsl:when test=".=	749110	">	SERVICIOS SUMINISTRO DE PERSONAL; EMPRESAS SERVICIOS TRANSITORIOS	</xsl:when>
                                        <xsl:when test=".=	749190	">	SERVICIOS DE RECLUTAMIENTO DE PERSONAL	</xsl:when>
                                        <xsl:when test=".=	749210	">	ACTIVIDADES DE INVESTIGACI�N	</xsl:when>
                                        <xsl:when test=".=	749221	">	SERVICIOS INTEGRALES DE SEGURIDAD	</xsl:when>
                                        <xsl:when test=".=	749222	">	TRANSPORTE DE VALORES	</xsl:when>
                                        <xsl:when test=".=	749229	">	SERVICIOS PERSONALES RELACIONADOS CON SEGURIDAD	</xsl:when>
                                        <xsl:when test=".=	749310	">	EMPRESAS DE LIMPIEZA DE EDIFICIOS RESIDENCIALES Y NO RESIDENCIALES	</xsl:when>
                                        <xsl:when test=".=	749320	">	DESRATIZACI�N Y FUMIGACI�N NO AGR�COLA	</xsl:when>
                                        <xsl:when test=".=	749401	">	SERVICIOS DE REVELADO, IMPRESI�N, AMPLIACI�N DE FOTOGRAF�AS	</xsl:when>
                                        <xsl:when test=".=	749402	">	ACTIVIDADES DE FOTOGRAF�A PUBLICITARIA	</xsl:when>
                                        <xsl:when test=".=	749409	">	SERVICIOS PERSONALES DE FOTOGRAF�A	</xsl:when>
                                        <xsl:when test=".=	749500	">	SERVICIOS DE ENVASADO Y EMPAQUE	</xsl:when>
                                        <xsl:when test=".=	749911	">	SERVICIOS DE COBRANZA DE CUENTAS	</xsl:when>
                                        <xsl:when test=".=	749912	">	EVALUACI�N Y CALIFICACI�N DEL GRADO DE SOLVENCIA	</xsl:when>
                                        <xsl:when test=".=	749913	">	ASESOR�AS EN LA GESTI�N DE LA COMPRA O VENTA DE PEQUENAS Y MEDIANAS EMPRESAS	</xsl:when>
                                        <xsl:when test=".=	749921	">	DISENADORES DE VESTUARIO	</xsl:when>
                                        <xsl:when test=".=	749922	">	DISENADORES DE INTERIORES	</xsl:when>
                                        <xsl:when test=".=	749929	">	OTROS DISENADORES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	749931	">	EMPRESAS DE TAQUIGRAF�A, REPRODUCCI�N, DESPACHO DE CORRESPONDENCIA, Y OTRAS LABORES DE OFICINA	</xsl:when>
                                        <xsl:when test=".=	749932	">	SERVICIOS PERSONALES DE TRADUCCI�N, INTERPRETACI�N Y LABORES DE OFICINA	</xsl:when>
                                        <xsl:when test=".=	749933	">	EMPRESAS DE TRADUCCI�N E INTERPRETACI�N	</xsl:when>
                                        <xsl:when test=".=	749934	">	SERVICIOS DE FOTOCOPIAS	</xsl:when>
                                        <xsl:when test=".=	749940	">	AGENCIAS DE CONTRATACI�N DE ACTORES	</xsl:when>
                                        <xsl:when test=".=	749950	">	ACTIVIDADES DE SUBASTA (MARTILLEROS)	</xsl:when>
                                        <xsl:when test=".=	749961	">	GALER�AS DE ARTE	</xsl:when>
                                        <xsl:when test=".=	749962	">	FERIAS DE EXPOSICIONES CON FINES EMPRESARIALES	</xsl:when>
                                        <xsl:when test=".=	749970	">	SERVICIOS DE CONTESTACI�N DE LLAMADAS (CALL CENTER)	</xsl:when>
                                        <xsl:when test=".=	749990	">	OTRAS ACTIVIDADES EMPRESARIALES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	751110	">	GOBIERNO CENTRAL	</xsl:when>
                                        <xsl:when test=".=	751120	">	MUNICIPALIDADES	</xsl:when>
                                        <xsl:when test=".=	751200	">	ACTIVIDADES DEL PODER JUDICIAL	</xsl:when>
                                        <xsl:when test=".=	751300	">	ACTIVIDADES DEL PODER LEGISLATIVO	</xsl:when>
                                        <xsl:when test=".=	752100	">	RELACIONES EXTERIORES	</xsl:when>
                                        <xsl:when test=".=	752200	">	ACTIVIDADES DE DEFENSA	</xsl:when>
                                        <xsl:when test=".=	752300	">	ACTIVIDADES DE MANTENIMIENTO DEL ORDEN P�BLICO Y DE SEGURIDAD	</xsl:when>
                                        <xsl:when test=".=	753010	">	ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA RELACIONADOS CON SALUD	</xsl:when>
                                        <xsl:when test=".=	753020	">	CAJAS DE COMPENSACI�N	</xsl:when>
                                        <xsl:when test=".=	753090	">	OTRAS ACTIVIDADES DE PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA	</xsl:when>
                                        <xsl:when test=".=	801010	">	ESTABLECIMIENTOS DE ENSE�ANZA PREESCOLAR	</xsl:when>
                                        <xsl:when test=".=	801020	">	ESTABLECIMIENTOS DE ENSE�ANZA PRIMARIA	</xsl:when>
                                        <xsl:when test=".=	802100	">	ESTABLECIMIENTOS DE ENSE�ANZA SECUNDARIA DE FORMACI�N GENERAL	</xsl:when>
                                        <xsl:when test=".=	802200	">	ESTABLECIMIENTOS DE ENSE�ANZA SECUNDARIA DE FORMACI�N T�CNICA Y PROFESIONAL	</xsl:when>
                                        <xsl:when test=".=	803010	">	UNIVERSIDADES	</xsl:when>
                                        <xsl:when test=".=	803020	">	INSTITUTOS PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	803030	">	CENTROS DE FORMACI�N T�CNICA	</xsl:when>
                                        <xsl:when test=".=	809010	">	ESTABLECIMIENTOS DE ENSE�ANZA PRIMARIA Y SECUNDARIA PARA ADULTOS	</xsl:when>
                                        <xsl:when test=".=	809020	">	ESTABLECIMIENTOS DE ENSE�ANZA PREUNIVERSITARIA	</xsl:when>
                                        <xsl:when test=".=	809030	">	EDUCACI�N EXTRAESCOLAR (ESCUELA DE CONDUCCI�N, M�SICA, MODELAJE, ETC.)	</xsl:when>
                                        <xsl:when test=".=	809041	">	EDUCACI�N A DISTANCIA (INTERNET, CORRESPONDENCIA, OTRAS)	</xsl:when>
                                        <xsl:when test=".=	809049	">	SERVICIOS PERSONALES DE EDUCACI�N	</xsl:when>
                                        <xsl:when test=".=	851110	">	HOSPITALES Y CL�NICAS	</xsl:when>
                                        <xsl:when test=".=	851120	">	CL�NICAS PSIQUIATRICAS, CENTROS DE REHABILITACI�N, ASILOS Y CL�NICAS DE REPOSO	</xsl:when>
                                        <xsl:when test=".=	851211	">	SERVICIOS DE M�DICOS EN FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".=	851212	">	ESTABLECIMIENTOS M�DICOS DE ATENCI�N AMBULATORIA (CENTROS M�DICOS)	</xsl:when>
                                        <xsl:when test=".=	851221	">	SERVICIOS DE ODONT�LOGOS EN FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".=	851222	">	CENTROS DE ATENCI�N ODONTOL�GICA	</xsl:when>
                                        <xsl:when test=".=	851910	">	LABORATORIOS CL�NICOS; INCLUYE BANCOS DE SANGRE	</xsl:when>
                                        <xsl:when test=".=	851920	">	OTROS PROFESIONALES DE LA SALUD	</xsl:when>
                                        <xsl:when test=".=	851990	">	OTRAS ACTIVIDADES EMPRESARIALES RELACIONADAS CON LA SALUD HUMANA	</xsl:when>
                                        <xsl:when test=".=	852010	">	ACTIVIDADES DE CL�NICAS VETERINARIAS	</xsl:when>
                                        <xsl:when test=".=	852021	">	SERVICIOS DE M�DICOS VETERINARIOS EN FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".=	852029	">	SERVICIOS DE OTROS PROFESIONALES INDEPENDIENTES EN EL �REA VETERINARIA	</xsl:when>
                                        <xsl:when test=".=	853100	">	SERVICIOS SOCIALES CON ALOJAMIENTO	</xsl:when>
                                        <xsl:when test=".=	853200	">	SERVICIOS SOCIALES SIN ALOJAMIENTO	</xsl:when>
                                        <xsl:when test=".=	900010	">	SERVICIOS DE VERTEDEROS	</xsl:when>
                                        <xsl:when test=".=	900020	">	BARRIDO DE EXTERIORES	</xsl:when>
                                        <xsl:when test=".=	900030	">	RECOGIDA Y ELIMINACI�N DE DESECHOS	</xsl:when>
                                        <xsl:when test=".=	900040	">	SERVICIOS DE EVACUACI�N DE RILES Y AGUAS SERVIDAS	</xsl:when>
                                        <xsl:when test=".=	900050	">	SERVICIOS DE TRATAMIENTO DE RILES Y AGUAS SERVIDAS	</xsl:when>
                                        <xsl:when test=".=	900090	">	OTRAS ACTIVIDADES DE MANEJO DE DESPERDICIOS	</xsl:when>
                                        <xsl:when test=".=	911100	">	ACTIVIDADES DE ORGANIZACIONES EMPRESARIALES Y DE EMPLEADORES	</xsl:when>
                                        <xsl:when test=".=	911210	">	COLEGIOS PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	911290	">	ACTIVIDADES DE OTRAS ORGANIZACIONES PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	912000	">	ACTIVIDADES DE SINDICATOS	</xsl:when>
                                        <xsl:when test=".=	919100	">	ACTIVIDADES DE ORGANIZACIONES RELIGIOSAS	</xsl:when>
                                        <xsl:when test=".=	919200	">	ACTIVIDADES DE ORGANIZACIONES POL�TICAS	</xsl:when>
                                        <xsl:when test=".=	919910	">	CENTROS DE MADRES Y UNIDADES VECINALES Y COMUNALES	</xsl:when>
                                        <xsl:when test=".=	919920	">	CLUBES SOCIALES	</xsl:when>
                                        <xsl:when test=".=	919930	">	SERVICIOS DE INSTITUTOS DE ESTUDIOS, FUNDACIONES, CORPORACIONES DE DESARROLLO (EDUCACI�N, SALUD)	</xsl:when>
                                        <xsl:when test=".=	919990	">	ACTIVIDADES DE OTRAS ASOCIACIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	921110	">	PRODUCCI�N DE PEL�CULAS CINEMATOGR�FICAS	</xsl:when>
                                        <xsl:when test=".=	921120	">	DISTRIBUIDORA CINEMATOGR�FICAS	</xsl:when>
                                        <xsl:when test=".=	921200	">	EXHIBICI�N DE FILMES Y VIDEOCINTAS	</xsl:when>
                                        <xsl:when test=".=	921310	">	ACTIVIDADES DE TELEVISI�N	</xsl:when>
                                        <xsl:when test=".=	921320	">	ACTIVIDADES DE RADIO	</xsl:when>
                                        <xsl:when test=".=	921411	">	SERVICIOS DE PRODUCCI�N DE RECITALES Y OTROS EVENTOS MUSICALES MASIVOS	</xsl:when>
                                        <xsl:when test=".=	921419	">	SERVICIOS DE PRODUCCI�N TEATRAL Y OTROS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	921420	">	ACTIVIDADES EMPRESARIALES DE ARTISTAS	</xsl:when>
                                        <xsl:when test=".=	921430	">	ACTIVIDADES ART�STICAS; FUNCIONES DE ARTISTAS, ACTORES, M�SICOS, CONFERENCISTAS, OTROS	</xsl:when>
                                        <xsl:when test=".=	921490	">	AGENCIAS DE VENTA DE BILLETES DE TEATRO, SALAS DE CONCIERTO Y DE TEATRO	</xsl:when>
                                        <xsl:when test=".=	921911	">	INSTRUCTORES DE DANZA	</xsl:when>
                                        <xsl:when test=".=	921912	">	ACTIVIDADES DE DISCOTECAS, CABARET, SALAS DE BAILE Y SIMILARES	</xsl:when>
                                        <xsl:when test=".=	921920	">	ACTIVIDADES DE PARQUES DE ATRACCIONES Y CENTROS SIMILARES	</xsl:when>
                                        <xsl:when test=".=	921930	">	ESPECT�CULOS CIRCENSES, DE T�TERES U OTROS SIMILARES	</xsl:when>
                                        <xsl:when test=".=	921990	">	OTRAS ACTIVIDADES DE ENTRETENIMIENTO N.C.P.	</xsl:when>
                                        <xsl:when test=".=	922001	">	AGENCIAS DE NOTICIAS	</xsl:when>
                                        <xsl:when test=".=	922002	">	SERVICIOS PERIOD�STICOS PRESTADO POR PROFESIONALES	</xsl:when>
                                        <xsl:when test=".=	923100	">	ACTIVIDADES DE BIBLIOTECAS Y ARCHIVOS	</xsl:when>
                                        <xsl:when test=".=	923200	">	ACTIVIDADES DE MUSEOS Y PRESERVACI�N DE LUGARES Y EDIFICIOS HIST�RICOS	</xsl:when>
                                        <xsl:when test=".=	923300	">	ACTIVIDADES DE JARDINES BOT�NICOS Y ZOOL�GICOS Y DE PARQUES NACIONALES	</xsl:when>
                                        <xsl:when test=".=	924110	">	EXPLOTACI�N DE INSTALACIONES ESPECIALIZADAS PARA LAS PRACTICAS DEPORTIVAS	</xsl:when>
                                        <xsl:when test=".=	924120	">	ACTIVIDADES DE CLUBES DE DEPORTES Y ESTADIOS	</xsl:when>
                                        <xsl:when test=".=	924131	">	FUTBOL PROFESIONAL	</xsl:when>
                                        <xsl:when test=".=	924132	">	FUTBOL AMATEUR	</xsl:when>
                                        <xsl:when test=".=	924140	">	HIP�DROMOS	</xsl:when>
                                        <xsl:when test=".=	924150	">	PROMOCI�N Y ORGANIZACI�N DE ESPECT�CULOS DEPORTIVOS	</xsl:when>
                                        <xsl:when test=".=	924160	">	ESCUELAS PARA DEPORTES	</xsl:when>
                                        <xsl:when test=".=	924190	">	OTRAS ACTIVIDADES RELACIONADAS AL DEPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".=	924910	">	SISTEMAS DE JUEGOS DE AZAR MASIVOS.	</xsl:when>
                                        <xsl:when test=".=	924920	">	ACTIVIDADES DE CASINO DE JUEGOS	</xsl:when>
                                        <xsl:when test=".=	924930	">	SALAS DE BILLAR, BOWLING, POOL Y JUEGOS ELECTR�NICOS	</xsl:when>
                                        <xsl:when test=".=	924940	">	CONTRATACI�N DE ACTORES PARA CINE, TV, Y TEATRO	</xsl:when>
                                        <xsl:when test=".=	924990	">	OTROS SERVICIOS DE DIVERSI�N Y ESPARCIMIENTOS N.C.P.	</xsl:when>
                                        <xsl:when test=".=	930100	">	LAVADO Y LIMPIEZA DE PRENDAS DE TELA Y DE PIEL, INCLUSO LAS LIMPIEZAS EN SECO	</xsl:when>
                                        <xsl:when test=".=	930200	">	PELUQUER�AS Y SALONES DE BELLEZA	</xsl:when>
                                        <xsl:when test=".=	930310	">	SERVICIOS FUNERARIOS	</xsl:when>
                                        <xsl:when test=".=	930320	">	SERVICIOS EN CEMENTERIOS	</xsl:when>
                                        <xsl:when test=".=	930330	">	SERVICIOS DE CARROZAS F�NEBRES (TRANSPORTE DE CAD�VERES)	</xsl:when>
                                        <xsl:when test=".=	930390	">	OTRAS ACTIVIDADES DE SERVICIOS FUNERARIOS Y OTRAS ACTIVIDADES CONEXAS	</xsl:when>
                                        <xsl:when test=".=	930910	">	ACTIVIDADES DE MANTENIMIENTO F�SICO CORPORAL (BA�OS, TURCOS, SAUNAS)	</xsl:when>
                                        <xsl:when test=".=	930990	">	OTRAS ACTIVIDADES DE SERVICIOS PERSONALES N.C.P.	</xsl:when>
                                        <xsl:when test=".=	950001	">	HOGARES PRIVADOS INDIVIDUALES CON SERVICIO DOM�STICO	</xsl:when>
                                        <xsl:when test=".=	950002	">	CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS	</xsl:when>
                                        <xsl:when test=".=	990000	">	ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES	</xsl:when>
                                        <xsl:otherwise>
                                            ERROR EN EL CODIGO DE LA ACTIVIDAD ECONOMICA
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <br/>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:otherwise>
                                <!-- code for dates before than or equal to 2018-11-01 -->
                                <xsl:for-each select="Acteco">
                                    <xsl:choose>
                                        <xsl:when test=".= 	11101	">	CULTIVO DE TRIGO	</xsl:when>
                                        <xsl:when test=".= 	11102	">	CULTIVO DE MA�Z	</xsl:when>
                                        <xsl:when test=".= 	11103	">	CULTIVO DE AVENA	</xsl:when>
                                        <xsl:when test=".= 	11104	">	CULTIVO DE CEBADA	</xsl:when>
                                        <xsl:when test=".= 	11105	">	CULTIVO DE OTROS CEREALES (EXCEPTO TRIGO, MA�Z, AVENA Y CEBADA)	</xsl:when>
                                        <xsl:when test=".= 	11106	">	CULTIVO DE POROTOS	</xsl:when>
                                        <xsl:when test=".= 	11107	">	CULTIVO DE LUPINO	</xsl:when>
                                        <xsl:when test=".= 	11108	">	CULTIVO DE OTRAS LEGUMBRES (EXCEPTO POROTOS Y LUPINO)	</xsl:when>
                                        <xsl:when test=".= 	11109	">	CULTIVO DE SEMILLAS DE RAPS	</xsl:when>
                                        <xsl:when test=".= 	11110	">	CULTIVO DE SEMILLAS DE MARAVILLA (GIRASOL)	</xsl:when>
                                        <xsl:when test=".= 	11111	">	CULTIVO DE SEMILLAS DE CEREALES, LEGUMBRES Y OLEAGINOSAS (EXCEPTO SEMILLAS DE RAPS Y MARAVILLA)	</xsl:when>
                                        <xsl:when test=".= 	11200	">	CULTIVO DE ARROZ	</xsl:when>
                                        <xsl:when test=".= 	11301	">	CULTIVO DE PAPAS	</xsl:when>
                                        <xsl:when test=".= 	11302	">	CULTIVO DE CAMOTES	</xsl:when>
                                        <xsl:when test=".= 	11303	">	CULTIVO DE OTROS TUB�RCULOS (EXCEPTO PAPAS Y CAMOTES)	</xsl:when>
                                        <xsl:when test=".= 	11304	">	CULTIVO DE REMOLACHA AZUCARERA	</xsl:when>
                                        <xsl:when test=".= 	11305	">	CULTIVO DE SEMILLAS DE HORTALIZAS	</xsl:when>
                                        <xsl:when test=".= 	11306	">	CULTIVO DE HORTALIZAS Y MELONES�	</xsl:when>
                                        <xsl:when test=".= 	11400	">	CULTIVO DE CA�A DE AZ�CAR	</xsl:when>
                                        <xsl:when test=".= 	11500	">	CULTIVO DE TABACO	</xsl:when>
                                        <xsl:when test=".= 	11600	">	CULTIVO DE PLANTAS DE FIBRA	</xsl:when>
                                        <xsl:when test=".= 	11901	">	CULTIVO DE FLORES	</xsl:when>
                                        <xsl:when test=".= 	11902	">	CULTIVOS FORRAJEROS EN PRADERAS MEJORADAS O SEMBRADAS; CULTIVOS SUPLEMENTARIOS FORRAJEROS	</xsl:when>
                                        <xsl:when test=".= 	11903	">	CULTIVOS DE SEMILLAS DE FLORES; CULTIVO DE SEMILLAS DE PLANTAS FORRAJERAS	</xsl:when>
                                        <xsl:when test=".= 	12111	">	CULTIVO DE UVA DESTINADA A LA PRODUCCI�N DE PISCO Y AGUARDIENTE	</xsl:when>
                                        <xsl:when test=".= 	12112	">	CULTIVO DE UVA DESTINADA A LA PRODUCCI�N DE VINO	</xsl:when>
                                        <xsl:when test=".= 	12120	">	CULTIVO DE UVA PARA MESA	</xsl:when>
                                        <xsl:when test=".= 	12200	">	CULTIVO DE FRUTAS TROPICALES Y SUBTROPICALES (INCLUYE EL CULTIVO DE PALTAS)	</xsl:when>
                                        <xsl:when test=".= 	12300	">	CULTIVO DE C�TRICOS	</xsl:when>
                                        <xsl:when test=".= 	12400	">	CULTIVO DE FRUTAS DE PEPITA Y DE HUESO	</xsl:when>
                                        <xsl:when test=".= 	12501	">	CULTIVO DE SEMILLAS DE FRUTAS	</xsl:when>
                                        <xsl:when test=".= 	12502	">	CULTIVO DE OTROS FRUTOS Y NUECES DE �RBOLES Y ARBUSTOS	</xsl:when>
                                        <xsl:when test=".= 	12600	">	CULTIVO DE FRUTOS OLEAGINOSOS (INCLUYE EL CULTIVO DE ACEITUNAS)	</xsl:when>
                                        <xsl:when test=".= 	12700	">	CULTIVO DE PLANTAS CON LAS QUE SE PREPARAN BEBIDAS (INCLUYE EL CULTIVO DE CAF�, T� Y MATE)	</xsl:when>
                                        <xsl:when test=".= 	12801	">	CULTIVO DE ESPECIAS	</xsl:when>
                                        <xsl:when test=".= 	12802	">	CULTIVO DE PLANTAS AROM�TICAS, MEDICINALES Y FARMAC�UTICAS	</xsl:when>
                                        <xsl:when test=".= 	12900	">	CULTIVO DE OTRAS PLANTAS PERENNES	</xsl:when>
                                        <xsl:when test=".= 	13000	">	CULTIVO DE PLANTAS VIVAS INCLUIDA LA PRODUCCI�N EN VIVEROS (EXCEPTO VIVEROS FORESTALES)	</xsl:when>
                                        <xsl:when test=".= 	14101	">	CR�A DE GANADO BOVINO PARA LA PRODUCCI�N LECHERA	</xsl:when>
                                        <xsl:when test=".= 	14102	">	CR�A DE GANADO BOVINO PARA LA PRODUCCI�N DE CARNE O COMO GANADO REPRODUCTOR	</xsl:when>
                                        <xsl:when test=".= 	14200	">	CR�A DE CABALLOS Y OTROS EQUINOS	</xsl:when>
                                        <xsl:when test=".= 	14300	">	CR�A DE LLAMAS, ALPACAS, VICU�AS, GUANACOS Y OTROS CAM�LIDOS	</xsl:when>
                                        <xsl:when test=".= 	14410	">	CR�A DE OVEJAS (OVINOS)	</xsl:when>
                                        <xsl:when test=".= 	14420	">	CR�A DE CABRAS (CAPRINOS)	</xsl:when>
                                        <xsl:when test=".= 	14500	">	CR�A DE CERDOS	</xsl:when>
                                        <xsl:when test=".= 	14601	">	CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE CARNE	</xsl:when>
                                        <xsl:when test=".= 	14602	">	CR�A DE AVES DE CORRAL PARA LA PRODUCCI�N DE HUEVOS	</xsl:when>
                                        <xsl:when test=".= 	14901	">	APICULTURA	</xsl:when>
                                        <xsl:when test=".= 	14909	">	CR�A DE OTROS ANIMALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	15000	">	CULTIVO DE PRODUCTOS AGR�COLAS EN COMBINACI�N CON LA CR�A DE ANIMALES (EXPLOTACI�N MIXTA)	</xsl:when>
                                        <xsl:when test=".= 	16100	">	ACTIVIDADES DE APOYO A LA AGRICULTURA	</xsl:when>
                                        <xsl:when test=".= 	16200	">	ACTIVIDADES DE APOYO A LA GANADER�A	</xsl:when>
                                        <xsl:when test=".= 	16300	">	ACTIVIDADES POSCOSECHA	</xsl:when>
                                        <xsl:when test=".= 	16400	">	TRATAMIENTO DE SEMILLAS PARA PROPAGACI�N	</xsl:when>
                                        <xsl:when test=".= 	17000	">	CAZA ORDINARIA Y MEDIANTE TRAMPAS Y ACTIVIDADES DE SERVICIOS CONEXAS	</xsl:when>
                                        <xsl:when test=".= 	21001	">	EXPLOTACI�N DE VIVEROS FORESTALES	</xsl:when>
                                        <xsl:when test=".= 	21002	">	SILVICULTURA Y OTRAS ACTIVIDADES FORESTALES (EXCEPTO EXPLOTACI�N DE VIVEROS FORESTALES)	</xsl:when>
                                        <xsl:when test=".= 	22000	">	EXTRACCI�N DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	23000	">	RECOLECCI�N DE PRODUCTOS FORESTALES DISTINTOS DE LA MADERA	</xsl:when>
                                        <xsl:when test=".= 	24001	">	SERVICIOS DE FORESTACI�N A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA	</xsl:when>
                                        <xsl:when test=".= 	24002	">	SERVICIOS DE CORTA DE MADERA A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA	</xsl:when>
                                        <xsl:when test=".= 	24003	">	SERVICIOS DE EXTINCI�N Y PREVENCI�N DE INCENDIOS FORESTALES	</xsl:when>
                                        <xsl:when test=".= 	24009	">	OTROS SERVICIOS DE APOYO A LA SILVICULTURA N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	31110	">	PESCA MAR�TIMA INDUSTRIAL, EXCEPTO DE BARCOS FACTOR�A	</xsl:when>
                                        <xsl:when test=".= 	31120	">	PESCA MAR�TIMA ARTESANAL	</xsl:when>
                                        <xsl:when test=".= 	31130	">	RECOLECCI�N Y EXTRACCI�N DE PRODUCTOS MARINOS	</xsl:when>
                                        <xsl:when test=".= 	31140	">	SERVICIOS RELACIONADOS CON LA PESCA MAR�TIMA	</xsl:when>
                                        <xsl:when test=".= 	31200	">	PESCA DE AGUA DULCE	</xsl:when>
                                        <xsl:when test=".= 	32110	">	CULTIVO Y CRIANZA DE PECES MARINOS	</xsl:when>
                                        <xsl:when test=".= 	32120	">	CULTIVO, REPRODUCCI�N Y MANEJO DE ALGAS MARINAS	</xsl:when>
                                        <xsl:when test=".= 	32130	">	REPRODUCCI�N Y CR�A DE MOLUSCOS, CRUST�CEOS Y GUSANOS MARINOS	</xsl:when>
                                        <xsl:when test=".= 	32140	">	SERVICIOS RELACIONADOS CON LA ACUICULTURA MARINA	</xsl:when>
                                        <xsl:when test=".= 	32200	">	ACUICULTURA DE AGUA DULCE	</xsl:when>
                                        <xsl:when test=".= 	40000	">	EXTRACCI�N Y PROCESAMIENTO DE COBRE	</xsl:when>
                                        <xsl:when test=".= 	51000	">	EXTRACCI�N DE CARB�N DE PIEDRA	</xsl:when>
                                        <xsl:when test=".= 	52000	">	EXTRACCI�N DE LIGNITO	</xsl:when>
                                        <xsl:when test=".= 	61000	">	EXTRACCI�N DE PETR�LEO CRUDO	</xsl:when>
                                        <xsl:when test=".= 	62000	">	EXTRACCI�N DE GAS NATURAL	</xsl:when>
                                        <xsl:when test=".= 	71000	">	EXTRACCI�N DE MINERALES DE HIERRO	</xsl:when>
                                        <xsl:when test=".= 	72100	">	EXTRACCI�N DE MINERALES DE URANIO Y TORIO	</xsl:when>
                                        <xsl:when test=".= 	72910	">	EXTRACCI�N DE ORO Y PLATA	</xsl:when>
                                        <xsl:when test=".= 	72991	">	EXTRACCI�N DE ZINC Y PLOMO	</xsl:when>
                                        <xsl:when test=".= 	72992	">	EXTRACCI�N DE MANGANESO	</xsl:when>
                                        <xsl:when test=".= 	72999	">	EXTRACCI�N DE OTROS MINERALES METAL�FEROS NO FERROSOS N.C.P. (EXCEPTO ZINC, PLOMO Y MANGANESO)	</xsl:when>
                                        <xsl:when test=".= 	81000	">	EXTRACCI�N DE PIEDRA, ARENA Y ARCILLA	</xsl:when>
                                        <xsl:when test=".= 	89110	">	EXTRACCI�N Y PROCESAMIENTO DE LITIO	</xsl:when>
                                        <xsl:when test=".= 	89190	">	EXTRACCI�N DE MINERALES PARA LA FABRICACI�N DE ABONOS Y PRODUCTOS QU�MICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	89200	">	EXTRACCI�N DE TURBA	</xsl:when>
                                        <xsl:when test=".= 	89300	">	EXTRACCI�N DE SAL	</xsl:when>
                                        <xsl:when test=".= 	89900	">	EXPLOTACI�N DE OTRAS MINAS Y CANTERAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	91001	">	ACTIVIDADES DE APOYO PARA LA EXTRACCI�N DE PETR�LEO Y GAS NATURAL PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	91002	">	ACTIVIDADES DE APOYO PARA LA EXTRACCI�N DE PETR�LEO Y GAS NATURAL PRESTADOS POR PROFESIONALES	</xsl:when>
                                        <xsl:when test=".= 	99001	">	ACTIVIDADES DE APOYO PARA LA EXPLOTACI�N DE OTRAS MINAS Y CANTERAS PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	99002	">	ACTIVIDADES DE APOYO PARA LA EXPLOTACI�N DE OTRAS MINAS Y CANTERAS PRESTADOS POR PROFESIONALES	</xsl:when>
                                        <xsl:when test=".= 	101011	">	EXPLOTACI�N DE MATADEROS DE BOVINOS, OVINOS, EQUINOS, CAPRINOS, PORCINOS Y CAM�LIDOS�	</xsl:when>
                                        <xsl:when test=".= 	101019	">	EXPLOTACI�N DE MATADEROS DE AVES Y DE OTROS TIPOS DE ANIMALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	101020	">	ELABORACI�N Y CONSERVACI�N DE CARNE Y PRODUCTOS C�RNICOS	</xsl:when>
                                        <xsl:when test=".= 	102010	">	PRODUCCI�N DE HARINA DE PESCADO	</xsl:when>
                                        <xsl:when test=".= 	102020	">	ELABORACI�N Y CONSERVACI�N DE SALM�NIDOS	</xsl:when>
                                        <xsl:when test=".= 	102030	">	ELABORACI�N Y CONSERVACI�N DE OTROS PESCADOS, EN PLANTAS EN TIERRA (EXCEPTO BARCOS FACTOR�A)	</xsl:when>
                                        <xsl:when test=".= 	102040	">	ELABORACI�N Y CONSERVACI�N DE CRUST�CEOS, MOLUSCOS Y OTROS PRODUCTOS ACU�TICOS, EN PLANTAS EN TIERRA	</xsl:when>
                                        <xsl:when test=".= 	102050	">	ACTIVIDADES DE ELABORACI�N Y CONSERVACI�N DE PESCADO, REALIZADAS EN BARCOS FACTOR�A	</xsl:when>
                                        <xsl:when test=".= 	102060	">	ELABORACI�N Y PROCESAMIENTO DE ALGAS	</xsl:when>
                                        <xsl:when test=".= 	103000	">	ELABORACI�N Y CONSERVACI�N DE FRUTAS, LEGUMBRES Y HORTALIZAS	</xsl:when>
                                        <xsl:when test=".= 	104000	">	ELABORACI�N DE ACEITES Y GRASAS DE ORIGEN VEGETAL Y ANIMAL (EXCEPTO ELABORACI�N DE MANTEQUILLA)	</xsl:when>
                                        <xsl:when test=".= 	105000	">	ELABORACI�N DE PRODUCTOS L�CTEOS	</xsl:when>
                                        <xsl:when test=".= 	106101	">	MOLIENDA DE TRIGO: PRODUCCI�N DE HARINA, S�MOLA Y GR�NULOS	</xsl:when>
                                        <xsl:when test=".= 	106102	">	MOLIENDA DE ARROZ; PRODUCCI�N DE HARINA DE ARROZ	</xsl:when>
                                        <xsl:when test=".= 	106109	">	ELABORACI�N DE OTROS PRODUCTOS DE MOLINER�A N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	106200	">	ELABORACI�N DE ALMIDONES Y PRODUCTOS DERIVADOS DEL ALMID�N	</xsl:when>
                                        <xsl:when test=".= 	107100	">	ELABORACI�N DE PRODUCTOS DE PANADER�A Y PASTELER�A	</xsl:when>
                                        <xsl:when test=".= 	107200	">	ELABORACI�N DE AZ�CAR	</xsl:when>
                                        <xsl:when test=".= 	107300	">	ELABORACI�N DE CACAO, CHOCOLATE Y DE PRODUCTOS DE CONFITER�A	</xsl:when>
                                        <xsl:when test=".= 	107400	">	ELABORACI�N DE MACARRONES, FIDEOS, ALCUZCUZ Y PRODUCTOS FARIN�CEOS SIMILARES	</xsl:when>
                                        <xsl:when test=".= 	107500	">	ELABORACI�N DE COMIDAS Y PLATOS PREPARADOS ENVASADOS, ROTULADOS Y CON INFORMACI�N NUTRICIONAL	</xsl:when>
                                        <xsl:when test=".= 	107901	">	ELABORACI�N DE T�, CAF�, MATE E INFUSIONES DE HIERBAS	</xsl:when>
                                        <xsl:when test=".= 	107902	">	ELABORACI�N DE LEVADURAS NATURALES O ARTIFICIALES	</xsl:when>
                                        <xsl:when test=".= 	107903	">	ELABORACI�N DE VINAGRES, MOSTAZAS, MAYONESAS Y CONDIMENTOS EN GENERAL	</xsl:when>
                                        <xsl:when test=".= 	107909	">	ELABORACI�N DE OTROS PRODUCTOS ALIMENTICIOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	108000	">	ELABORACI�N DE PIENSOS PREPARADOS PARA ANIMALES	</xsl:when>
                                        <xsl:when test=".= 	110110	">	ELABORACI�N DE PISCO (INDUSTRIAS PISQUERAS)	</xsl:when>
                                        <xsl:when test=".= 	110120	">	DESTILACI�N, RECTIFICACI�N Y MEZCLAS DE BEBIDAS ALCOH�LICAS; EXCEPTO PISCO	</xsl:when>
                                        <xsl:when test=".= 	110200	">	ELABORACI�N DE VINOS	</xsl:when>
                                        <xsl:when test=".= 	110300	">	ELABORACI�N DE BEBIDAS MALTEADAS Y DE MALTA	</xsl:when>
                                        <xsl:when test=".= 	110401	">	ELABORACI�N DE BEBIDAS NO ALCOH�LICAS	</xsl:when>
                                        <xsl:when test=".= 	110402	">	PRODUCCI�N DE AGUAS MINERALES Y OTRAS AGUAS EMBOTELLADAS	</xsl:when>
                                        <xsl:when test=".= 	120001	">	ELABORACI�N DE CIGARROS Y CIGARRILLOS	</xsl:when>
                                        <xsl:when test=".= 	120009	">	ELABORACI�N DE OTROS PRODUCTOS DE TABACO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	131100	">	PREPARACI�N E HILATURA DE FIBRAS TEXTILES	</xsl:when>
                                        <xsl:when test=".= 	131200	">	TEJEDURA DE PRODUCTOS TEXTILES	</xsl:when>
                                        <xsl:when test=".= 	131300	">	ACABADO DE PRODUCTOS TEXTILES	</xsl:when>
                                        <xsl:when test=".= 	139100	">	FABRICACI�N DE TEJIDOS DE PUNTO Y GANCHILLO	</xsl:when>
                                        <xsl:when test=".= 	139200	">	FABRICACI�N DE ART�CULOS CONFECCIONADOS DE MATERIALES TEXTILES, EXCEPTO PRENDAS DE VESTIR	</xsl:when>
                                        <xsl:when test=".= 	139300	">	FABRICACI�N DE TAPICES Y ALFOMBRAS	</xsl:when>
                                        <xsl:when test=".= 	139400	">	FABRICACI�N DE CUERDAS, CORDELES, BRAMANTES Y REDES	</xsl:when>
                                        <xsl:when test=".= 	139900	">	FABRICACI�N DE OTROS PRODUCTOS TEXTILES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	141001	">	FABRICACI�N DE PRENDAS DE VESTIR DE MATERIALES TEXTILES Y SIMILARES	</xsl:when>
                                        <xsl:when test=".= 	141002	">	FABRICACI�N DE PRENDAS DE VESTIR DE CUERO NATURAL O ARTIFICIAL	</xsl:when>
                                        <xsl:when test=".= 	141003	">	FABRICACI�N DE ACCESORIOS DE VESTIR	</xsl:when>
                                        <xsl:when test=".= 	141004	">	FABRICACI�N DE ROPA DE TRABAJO	</xsl:when>
                                        <xsl:when test=".= 	142000	">	FABRICACI�N DE ART�CULOS DE PIEL	</xsl:when>
                                        <xsl:when test=".= 	143000	">	FABRICACI�N DE ART�CULOS DE PUNTO Y GANCHILLO	</xsl:when>
                                        <xsl:when test=".= 	151100	">	CURTIDO Y ADOBO DE CUEROS; ADOBO Y TE�IDO DE PIELES	</xsl:when>
                                        <xsl:when test=".= 	151200	">	FABRICACI�N DE MALETAS, BOLSOS Y ART�CULOS SIMILARES, ART�CULOS DE TALABARTER�A Y GUARNICIONER�A	</xsl:when>
                                        <xsl:when test=".= 	152000	">	FABRICACI�N DE CALZADO	</xsl:when>
                                        <xsl:when test=".= 	161000	">	ASERRADO Y ACEPILLADURA DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	162100	">	FABRICACI�N DE HOJAS DE MADERA PARA ENCHAPADO Y TABLEROS A BASE DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	162200	">	FABRICACI�N DE PARTES Y PIEZAS DE CARPINTER�A PARA EDIFICIOS Y CONSTRUCCIONES	</xsl:when>
                                        <xsl:when test=".= 	162300	">	FABRICACI�N DE RECIPIENTES DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	162900	">	FABRICACI�N DE OTROS PRODUCTOS DE MADERA, DE ART�CULOS DE CORCHO, PAJA Y MATERIALES TRENZABLES	</xsl:when>
                                        <xsl:when test=".= 	170110	">	FABRICACI�N DE CELULOSA Y OTRAS PASTAS DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	170190	">	FABRICACI�N DE PAPEL Y CART�N PARA SU POSTERIOR USO INDUSTRIAL N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	170200	">	FABRICACI�N DE PAPEL Y CART�N ONDULADO Y DE ENVASES DE PAPEL Y CART�N	</xsl:when>
                                        <xsl:when test=".= 	170900	">	FABRICACI�N DE OTROS ART�CULOS DE PAPEL Y CART�N	</xsl:when>
                                        <xsl:when test=".= 	181101	">	IMPRESI�N DE LIBROS	</xsl:when>
                                        <xsl:when test=".= 	181109	">	OTRAS ACTIVIDADES DE IMPRESI�N N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	181200	">	ACTIVIDADES DE SERVICIOS RELACIONADAS CON LA IMPRESI�N	</xsl:when>
                                        <xsl:when test=".= 	182000	">	REPRODUCCI�N DE GRABACIONES	</xsl:when>
                                        <xsl:when test=".= 	191000	">	FABRICACI�N DE PRODUCTOS DE HORNOS DE COQUE	</xsl:when>
                                        <xsl:when test=".= 	192000	">	FABRICACI�N DE PRODUCTOS DE LA REFINACI�N DEL PETR�LEO	</xsl:when>
                                        <xsl:when test=".= 	201101	">	FABRICACI�N DE CARB�N VEGETAL (EXCEPTO ACTIVADO); FABRICACI�N DE BRIQUETAS DE CARB�N VEGETAL	</xsl:when>
                                        <xsl:when test=".= 	201109	">	FABRICACI�N DE OTRAS SUSTANCIAS QU�MICAS B�SICAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	201200	">	FABRICACI�N DE ABONOS Y COMPUESTOS DE NITR�GENO	</xsl:when>
                                        <xsl:when test=".= 	201300	">	FABRICACI�N DE PL�STICOS Y CAUCHO SINT�TICO EN FORMAS PRIMARIAS	</xsl:when>
                                        <xsl:when test=".= 	202100	">	FABRICACI�N DE PLAGUICIDAS Y OTROS PRODUCTOS QU�MICOS DE USO AGROPECUARIO	</xsl:when>
                                        <xsl:when test=".= 	202200	">	FABRICACI�N DE PINTURAS, BARNICES Y PRODUCTOS DE REVESTIMIENTO, TINTAS DE IMPRENTA Y MASILLAS	</xsl:when>
                                        <xsl:when test=".= 	202300	">	FABRICACI�N DE JABONES Y DETERGENTES, PREPARADOS PARA LIMPIAR, PERFUMES Y PREPARADOS DE TOCADOR	</xsl:when>
                                        <xsl:when test=".= 	202901	">	FABRICACI�N DE EXPLOSIVOS Y PRODUCTOS PIROT�CNICOS	</xsl:when>
                                        <xsl:when test=".= 	202909	">	FABRICACI�N DE OTROS PRODUCTOS QU�MICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	203000	">	FABRICACI�N DE FIBRAS ARTIFICIALES	</xsl:when>
                                        <xsl:when test=".= 	210000	">	FABRICACI�N DE PRODUCTOS FARMAC�UTICOS, SUSTANCIAS QU�MICAS MEDICINALES Y PRODUCTOS BOT�NICOS	</xsl:when>
                                        <xsl:when test=".= 	221100	">	FABRICACI�N DE CUBIERTAS Y C�MARAS DE CAUCHO; RECAUCHUTADO Y RENOVACI�N DE CUBIERTAS DE CAUCHO	</xsl:when>
                                        <xsl:when test=".= 	221900	">	FABRICACI�N DE OTROS PRODUCTOS DE CAUCHO	</xsl:when>
                                        <xsl:when test=".= 	222000	">	FABRICACI�N DE PRODUCTOS DE PL�STICO	</xsl:when>
                                        <xsl:when test=".= 	231001	">	FABRICACI�N DE VIDRIO PLANO	</xsl:when>
                                        <xsl:when test=".= 	231002	">	FABRICACI�N DE VIDRIO HUECO	</xsl:when>
                                        <xsl:when test=".= 	231003	">	FABRICACI�N DE FIBRAS DE VIDRIO	</xsl:when>
                                        <xsl:when test=".= 	231009	">	FABRICACI�N DE PRODUCTOS DE VIDRIO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	239100	">	FABRICACI�N DE PRODUCTOS REFRACTARIOS	</xsl:when>
                                        <xsl:when test=".= 	239200	">	FABRICACI�N DE MATERIALES DE CONSTRUCCI�N DE ARCILLA	</xsl:when>
                                        <xsl:when test=".= 	239300	">	FABRICACI�N DE OTROS PRODUCTOS DE PORCELANA Y DE CER�MICA	</xsl:when>
                                        <xsl:when test=".= 	239400	">	FABRICACI�N DE CEMENTO, CAL Y YESO	</xsl:when>
                                        <xsl:when test=".= 	239500	">	FABRICACI�N DE ART�CULOS DE HORMIG�N, CEMENTO Y YESO	</xsl:when>
                                        <xsl:when test=".= 	239600	">	CORTE, TALLA Y ACABADO DE LA PIEDRA	</xsl:when>
                                        <xsl:when test=".= 	239900	">	FABRICACI�N DE OTROS PRODUCTOS MINERALES NO MET�LICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	241000	">	INDUSTRIAS B�SICAS DE HIERRO Y ACERO	</xsl:when>
                                        <xsl:when test=".= 	242001	">	FABRICACI�N DE PRODUCTOS PRIMARIOS DE COBRE	</xsl:when>
                                        <xsl:when test=".= 	242002	">	FABRICACI�N DE PRODUCTOS PRIMARIOS DE ALUMINIO	</xsl:when>
                                        <xsl:when test=".= 	242009	">	FABRICACI�N DE PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE OTROS METALES NO FERROSOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	243100	">	FUNDICI�N DE HIERRO Y ACERO	</xsl:when>
                                        <xsl:when test=".= 	243200	">	FUNDICI�N DE METALES NO FERROSOS	</xsl:when>
                                        <xsl:when test=".= 	251100	">	FABRICACI�N DE PRODUCTOS MET�LICOS PARA USO ESTRUCTURAL	</xsl:when>
                                        <xsl:when test=".= 	251201	">	FABRICACI�N DE RECIPIENTES DE METAL PARA GASES COMPRIMIDOS O LICUADOS	</xsl:when>
                                        <xsl:when test=".= 	251209	">	FABRICACI�N DE TANQUES, DEP�SITOS Y RECIPIENTES DE METAL N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	251300	">	FABRICACI�N DE GENERADORES DE VAPOR, EXCEPTO CALDERAS DE AGUA CALIENTE PARA CALEFACCI�N CENTRAL	</xsl:when>
                                        <xsl:when test=".= 	252000	">	FABRICACI�N DE ARMAS Y MUNICIONES	</xsl:when>
                                        <xsl:when test=".= 	259100	">	FORJA, PRENSADO, ESTAMPADO Y LAMINADO DE METALES; PULVIMETALURGIA	</xsl:when>
                                        <xsl:when test=".= 	259200	">	TRATAMIENTO Y REVESTIMIENTO DE METALES; MAQUINADO	</xsl:when>
                                        <xsl:when test=".= 	259300	">	FABRICACI�N DE ART�CULOS DE CUCHILLER�A, HERRAMIENTAS DE MANO Y ART�CULOS DE FERRETER�A	</xsl:when>
                                        <xsl:when test=".= 	259900	">	FABRICACI�N DE OTROS PRODUCTOS ELABORADOS DE METAL N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	261000	">	FABRICACI�N DE COMPONENTES Y TABLEROS ELECTR�NICOS	</xsl:when>
                                        <xsl:when test=".= 	262000	">	FABRICACI�N DE COMPUTADORES Y EQUIPO PERIF�RICO	</xsl:when>
                                        <xsl:when test=".= 	263000	">	FABRICACI�N DE EQUIPO DE COMUNICACIONES	</xsl:when>
                                        <xsl:when test=".= 	264000	">	FABRICACI�N DE APARATOS ELECTR�NICOS DE CONSUMO	</xsl:when>
                                        <xsl:when test=".= 	265100	">	FABRICACI�N DE EQUIPO DE MEDICI�N, PRUEBA, NAVEGACI�N Y CONTROL	</xsl:when>
                                        <xsl:when test=".= 	265200	">	FABRICACI�N DE RELOJES	</xsl:when>
                                        <xsl:when test=".= 	266000	">	FABRICACI�N DE EQUIPO DE IRRADIACI�N Y EQUIPO ELECTR�NICO DE USO M�DICO Y TERAP�UTICO	</xsl:when>
                                        <xsl:when test=".= 	267000	">	FABRICACI�N DE INSTRUMENTOS �PTICOS Y EQUIPO FOTOGR�FICO	</xsl:when>
                                        <xsl:when test=".= 	268000	">	FABRICACI�N DE SOPORTES MAGN�TICOS Y �PTICOS	</xsl:when>
                                        <xsl:when test=".= 	271000	">	FABRICACI�N DE MOTORES, GENERADORES Y TRANSFORMADORES EL�CTRICOS, APARATOS DE DISTRIBUCI�N Y CONTROL	</xsl:when>
                                        <xsl:when test=".= 	272000	">	FABRICACI�N DE PILAS, BATER�AS Y ACUMULADORES	</xsl:when>
                                        <xsl:when test=".= 	273100	">	FABRICACI�N DE CABLES DE FIBRA �PTICA	</xsl:when>
                                        <xsl:when test=".= 	273200	">	FABRICACI�N DE OTROS HILOS Y CABLES EL�CTRICOS	</xsl:when>
                                        <xsl:when test=".= 	273300	">	FABRICACI�N DE DISPOSITIVOS DE CABLEADO	</xsl:when>
                                        <xsl:when test=".= 	274000	">	FABRICACI�N DE EQUIPO EL�CTRICO DE ILUMINACI�N	</xsl:when>
                                        <xsl:when test=".= 	275000	">	FABRICACI�N DE APARATOS DE USO DOM�STICO	</xsl:when>
                                        <xsl:when test=".= 	279000	">	FABRICACI�N DE OTROS TIPOS DE EQUIPO EL�CTRICO	</xsl:when>
                                        <xsl:when test=".= 	281100	">	FABRICACI�N DE MOTORES Y TURBINAS, EXCEPTO PARA AERONAVES, VEH�CULOS AUTOMOTORES Y MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".= 	281200	">	FABRICACI�N DE EQUIPO DE PROPULSI�N DE FLUIDOS	</xsl:when>
                                        <xsl:when test=".= 	281300	">	FABRICACI�N DE OTRAS BOMBAS, COMPRESORES, GRIFOS Y V�LVULAS	</xsl:when>
                                        <xsl:when test=".= 	281400	">	FABRICACI�N DE COJINETES, ENGRANAJES, TRENES DE ENGRANAJES Y PIEZAS DE TRANSMISI�N	</xsl:when>
                                        <xsl:when test=".= 	281500	">	FABRICACI�N DE HORNOS, CALDERAS Y QUEMADORES	</xsl:when>
                                        <xsl:when test=".= 	281600	">	FABRICACI�N DE EQUIPO DE ELEVACI�N Y MANIPULACI�N	</xsl:when>
                                        <xsl:when test=".= 	281700	">	FABRICACI�N DE MAQUINARIA Y EQUIPO DE OFICINA (EXCEPTO COMPUTADORES Y EQUIPO PERIF�RICO)	</xsl:when>
                                        <xsl:when test=".= 	281800	">	FABRICACI�N DE HERRAMIENTAS DE MANO MOTORIZADAS	</xsl:when>
                                        <xsl:when test=".= 	281900	">	FABRICACI�N DE OTROS TIPOS DE MAQUINARIA DE USO GENERAL	</xsl:when>
                                        <xsl:when test=".= 	282100	">	FABRICACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL	</xsl:when>
                                        <xsl:when test=".= 	282200	">	FABRICACI�N DE MAQUINARIA PARA LA CONFORMACI�N DE METALES Y DE M�QUINAS HERRAMIENTA	</xsl:when>
                                        <xsl:when test=".= 	282300	">	FABRICACI�N DE MAQUINARIA METAL�RGICA	</xsl:when>
                                        <xsl:when test=".= 	282400	">	FABRICACI�N DE MAQUINARIA PARA LA EXPLOTACI�N DE MINAS Y CANTERAS Y PARA OBRAS DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".= 	282500	">	FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACO	</xsl:when>
                                        <xsl:when test=".= 	282600	">	FABRICACI�N DE MAQUINARIA PARA LA ELABORACI�N DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CUEROS	</xsl:when>
                                        <xsl:when test=".= 	282900	">	FABRICACI�N DE OTROS TIPOS DE MAQUINARIA DE USO ESPECIAL	</xsl:when>
                                        <xsl:when test=".= 	291000	">	FABRICACI�N DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	292000	">	FABRICACI�N DE CARROCER�AS PARA VEH�CULOS AUTOMOTORES; FABRICACI�N DE REMOLQUES Y SEMIRREMOLQUES	</xsl:when>
                                        <xsl:when test=".= 	293000	">	FABRICACI�N DE PARTES, PIEZAS Y ACCESORIOS PARA VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	301100	">	CONSTRUCCI�N DE BUQUES, EMBARCACIONES MENORES Y ESTRUCTURAS FLOTANTES	</xsl:when>
                                        <xsl:when test=".= 	301200	">	CONSTRUCCI�N DE EMBARCACIONES DE RECREO Y DE DEPORTE	</xsl:when>
                                        <xsl:when test=".= 	302000	">	FABRICACI�N DE LOCOMOTORAS Y MATERIAL RODANTE	</xsl:when>
                                        <xsl:when test=".= 	303000	">	FABRICACI�N DE AERONAVES, NAVES ESPACIALES Y MAQUINARIA CONEXA	</xsl:when>
                                        <xsl:when test=".= 	304000	">	FABRICACI�N DE VEH�CULOS MILITARES DE COMBATE	</xsl:when>
                                        <xsl:when test=".= 	309100	">	FABRICACI�N DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".= 	309200	">	FABRICACI�N DE BICICLETAS Y DE SILLAS DE RUEDAS	</xsl:when>
                                        <xsl:when test=".= 	309900	">	FABRICACI�N DE OTROS TIPOS DE EQUIPO DE TRANSPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	310001	">	FABRICACI�N DE MUEBLES PRINCIPALMENTE DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	310009	">	FABRICACI�N DE COLCHONES; FABRICACI�N DE OTROS MUEBLES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	321100	">	FABRICACI�N DE JOYAS Y ART�CULOS CONEXOS	</xsl:when>
                                        <xsl:when test=".= 	321200	">	FABRICACI�N DE BISUTER�A Y ART�CULOS CONEXOS	</xsl:when>
                                        <xsl:when test=".= 	322000	">	FABRICACI�N DE INSTRUMENTOS MUSICALES	</xsl:when>
                                        <xsl:when test=".= 	323000	">	FABRICACI�N DE ART�CULOS DE DEPORTE	</xsl:when>
                                        <xsl:when test=".= 	324000	">	FABRICACI�N DE JUEGOS Y JUGUETES	</xsl:when>
                                        <xsl:when test=".= 	325001	">	ACTIVIDADES DE LABORATORIOS DENTALES	</xsl:when>
                                        <xsl:when test=".= 	325009	">	FABRICACI�N DE INSTRUMENTOS Y MATERIALES M�DICOS, OFTALMOL�GICOS Y ODONTOL�GICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	329000	">	OTRAS INDUSTRIAS MANUFACTURERAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	331100	">	REPARACI�N DE PRODUCTOS ELABORADOS DE METAL	</xsl:when>
                                        <xsl:when test=".= 	331201	">	REPARACI�N DE MAQUINARIA AGROPECUARIA Y FORESTAL	</xsl:when>
                                        <xsl:when test=".= 	331202	">	REPARACI�N DE MAQUINARIA METAL�RGICA, PARA LA MINER�A, EXTRACCI�N DE PETR�LEO Y PARA LA CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".= 	331203	">	REPARACI�N DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACO	</xsl:when>
                                        <xsl:when test=".= 	331204	">	REPARACI�N DE MAQUINARIA PARA PRODUCIR TEXTILES, PRENDAS DE VESTIR, ART�CULOS DE CUERO Y CALZADO��	</xsl:when>
                                        <xsl:when test=".= 	331209	">	REPARACI�N DE OTRO TIPO DE MAQUINARIA Y EQUIPOS INDUSTRIALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	331301	">	REPARACI�N DE EQUIPO DE MEDICI�N, PRUEBA, NAVEGACI�N Y CONTROL	</xsl:when>
                                        <xsl:when test=".= 	331309	">	REPARACI�N DE OTROS EQUIPOS ELECTR�NICOS Y �PTICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	331400	">	REPARACI�N DE EQUIPO EL�CTRICO (EXCEPTO REPARACI�N DE EQUIPO Y ENSERES DOM�STICOS)	</xsl:when>
                                        <xsl:when test=".= 	331501	">	REPARACI�N DE BUQUES, EMBARCACIONES MENORES Y ESTRUCTURAS FLOTANTES	</xsl:when>
                                        <xsl:when test=".= 	331502	">	REPARACI�N DE AERONAVES Y NAVES ESPACIALES	</xsl:when>
                                        <xsl:when test=".= 	331509	">	REPARACI�N DE OTROS EQUIPOS DE TRANSPORTE N.C.P., EXCEPTO VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	331900	">	REPARACI�N DE OTROS TIPOS DE EQUIPO	</xsl:when>
                                        <xsl:when test=".= 	332000	">	INSTALACI�N DE MAQUINARIA Y EQUIPOS INDUSTRIALES	</xsl:when>
                                        <xsl:when test=".= 	351011	">	GENERACI�N DE ENERG�A EL�CTRICA EN CENTRALES HIDROEL�CTRICAS	</xsl:when>
                                        <xsl:when test=".= 	351012	">	GENERACI�N DE ENERG�A EL�CTRICA EN CENTRALES TERMOEL�CTRICAS	</xsl:when>
                                        <xsl:when test=".= 	351019	">	GENERACI�N DE ENERG�A EL�CTRICA EN OTRAS CENTRALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	351020	">	TRANSMISI�N DE ENERG�A EL�CTRICA	</xsl:when>
                                        <xsl:when test=".= 	351030	">	DISTRIBUCI�N DE ENERG�A EL�CTRICA	</xsl:when>
                                        <xsl:when test=".= 	352010	">	REGASIFICACI�N DE GAS NATURAL LICUADO (GNL)	</xsl:when>
                                        <xsl:when test=".= 	352020	">	FABRICACI�N DE GAS; DISTRIBUCI�N DE COMBUSTIBLES GASEOSOS POR TUBER�A, EXCEPTO REGASIFICACI�N DE GNL	</xsl:when>
                                        <xsl:when test=".= 	353001	">	SUMINISTRO DE VAPOR Y DE AIRE ACONDICIONADO	</xsl:when>
                                        <xsl:when test=".= 	353002	">	ELABORACI�N DE HIELO (EXCEPTO FABRICACI�N DE HIELO SECO)	</xsl:when>
                                        <xsl:when test=".= 	360000	">	CAPTACI�N, TRATAMIENTO Y DISTRIBUCI�N DE AGUA	</xsl:when>
                                        <xsl:when test=".= 	370000	">	EVACUACI�N Y TRATAMIENTO DE AGUAS SERVIDAS	</xsl:when>
                                        <xsl:when test=".= 	381100	">	RECOGIDA DE DESECHOS NO PELIGROSOS	</xsl:when>
                                        <xsl:when test=".= 	381200	">	RECOGIDA DE DESECHOS PELIGROSOS	</xsl:when>
                                        <xsl:when test=".= 	382100	">	TRATAMIENTO Y ELIMINACI�N DE DESECHOS NO PELIGROSOS	</xsl:when>
                                        <xsl:when test=".= 	382200	">	TRATAMIENTO Y ELIMINACI�N DE DESECHOS PELIGROSOS	</xsl:when>
                                        <xsl:when test=".= 	383001	">	RECUPERACI�N Y RECICLAMIENTO DE DESPERDICIOS Y DESECHOS MET�LICOS	</xsl:when>
                                        <xsl:when test=".= 	383002	">	RECUPERACI�N Y RECICLAMIENTO DE PAPEL	</xsl:when>
                                        <xsl:when test=".= 	383003	">	RECUPERACI�N Y RECICLAMIENTO DE VIDRIO	</xsl:when>
                                        <xsl:when test=".= 	383009	">	RECUPERACI�N Y RECICLAMIENTO DE OTROS DESPERDICIOS Y DESECHOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	390000	">	ACTIVIDADES DE DESCONTAMINACI�N Y OTROS SERVICIOS DE GESTI�N DE DESECHOS	</xsl:when>
                                        <xsl:when test=".= 	410010	">	CONSTRUCCI�N DE EDIFICIOS PARA USO RESIDENCIAL	</xsl:when>
                                        <xsl:when test=".= 	410020	">	CONSTRUCCI�N DE EDIFICIOS PARA USO NO RESIDENCIAL	</xsl:when>
                                        <xsl:when test=".= 	421000	">	CONSTRUCCI�N DE CARRETERAS Y L�NEAS DE FERROCARRIL	</xsl:when>
                                        <xsl:when test=".= 	422000	">	CONSTRUCCI�N DE PROYECTOS DE SERVICIO P�BLICO	</xsl:when>
                                        <xsl:when test=".= 	429000	">	CONSTRUCCI�N DE OTRAS OBRAS DE INGENIER�A CIVIL	</xsl:when>
                                        <xsl:when test=".= 	431100	">	DEMOLICI�N	</xsl:when>
                                        <xsl:when test=".= 	431200	">	PREPARACI�N DEL TERRENO	</xsl:when>
                                        <xsl:when test=".= 	432100	">	INSTALACIONES EL�CTRICAS	</xsl:when>
                                        <xsl:when test=".= 	432200	">	INSTALACIONES DE GASFITER�A, CALEFACCI�N Y AIRE ACONDICIONADO	</xsl:when>
                                        <xsl:when test=".= 	432900	">	OTRAS INSTALACIONES PARA OBRAS DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".= 	433000	">	TERMINACI�N Y ACABADO DE EDIFICIOS	</xsl:when>
                                        <xsl:when test=".= 	439000	">	OTRAS ACTIVIDADES ESPECIALIZADAS DE CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".= 	451001	">	VENTA AL POR MAYOR DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	451002	">	VENTA AL POR MENOR DE VEH�CULOS AUTOMOTORES NUEVOS O USADOS (INCLUYE COMPRAVENTA)	</xsl:when>
                                        <xsl:when test=".= 	452001	">	SERVICIO DE LAVADO DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	452002	">	MANTENIMIENTO Y REPARACI�N DE VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	453000	">	VENTA DE PARTES, PIEZAS Y ACCESORIOS PARA VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	454001	">	VENTA DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".= 	454002	">	VENTA DE PARTES, PIEZAS Y ACCESORIOS DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".= 	454003	">	MANTENIMIENTO Y REPARACI�N DE MOTOCICLETAS	</xsl:when>
                                        <xsl:when test=".= 	461001	">	CORRETAJE AL POR MAYOR DE PRODUCTOS AGR�COLAS	</xsl:when>
                                        <xsl:when test=".= 	461002	">	CORRETAJE AL POR MAYOR DE GANADO	</xsl:when>
                                        <xsl:when test=".= 	461009	">	OTROS TIPOS DE CORRETAJES O REMATES AL POR MAYOR N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	462010	">	VENTA AL POR MAYOR DE MATERIAS PRIMAS AGR�COLAS	</xsl:when>
                                        <xsl:when test=".= 	462020	">	VENTA AL POR MAYOR DE ANIMALES VIVOS	</xsl:when>
                                        <xsl:when test=".= 	462090	">	VENTA AL POR MAYOR DE OTRAS MATERIAS PRIMAS AGROPECUARIAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	463011	">	VENTA AL POR MAYOR DE FRUTAS Y VERDURAS	</xsl:when>
                                        <xsl:when test=".= 	463012	">	VENTA AL POR MAYOR DE CARNE Y PRODUCTOS C�RNICOS	</xsl:when>
                                        <xsl:when test=".= 	463013	">	VENTA AL POR MAYOR DE PRODUCTOS DEL MAR (PESCADOS, MARISCOS Y ALGAS)	</xsl:when>
                                        <xsl:when test=".= 	463014	">	VENTA AL POR MAYOR DE PRODUCTOS DE CONFITER�A	</xsl:when>
                                        <xsl:when test=".= 	463019	">	VENTA AL POR MAYOR DE HUEVOS, L�CTEOS, ABARROTES Y DE OTROS ALIMENTOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	463020	">	VENTA AL POR MAYOR DE BEBIDAS ALCOH�LICAS Y NO ALCOH�LICAS	</xsl:when>
                                        <xsl:when test=".= 	463030	">	VENTA AL POR MAYOR DE TABACO	</xsl:when>
                                        <xsl:when test=".= 	464100	">	VENTA AL POR MAYOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO	</xsl:when>
                                        <xsl:when test=".= 	464901	">	VENTA AL POR MAYOR DE MUEBLES, EXCEPTO MUEBLES DE OFICINA	</xsl:when>
                                        <xsl:when test=".= 	464902	">	VENTA AL POR MAYOR DE ART�CULOS EL�CTRICOS Y ELECTR�NICOS PARA EL HOGAR	</xsl:when>
                                        <xsl:when test=".= 	464903	">	VENTA AL POR MAYOR DE ART�CULOS DE PERFUMER�A, DE TOCADOR Y COSM�TICOS	</xsl:when>
                                        <xsl:when test=".= 	464904	">	VENTA AL POR MAYOR DE ART�CULOS DE PAPELER�A Y ESCRITORIO	</xsl:when>
                                        <xsl:when test=".= 	464905	">	VENTA AL POR MAYOR DE LIBROS	</xsl:when>
                                        <xsl:when test=".= 	464906	">	VENTA AL POR MAYOR DE DIARIOS Y REVISTAS	</xsl:when>
                                        <xsl:when test=".= 	464907	">	VENTA AL POR MAYOR DE PRODUCTOS FARMAC�UTICOS Y MEDICINALES�	</xsl:when>
                                        <xsl:when test=".= 	464908	">	VENTA AL POR MAYOR DE INSTRUMENTOS CIENT�FICOS Y QUIR�RGICOS	</xsl:when>
                                        <xsl:when test=".= 	464909	">	VENTA AL POR MAYOR DE OTROS ENSERES DOM�STICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	465100	">	VENTA AL POR MAYOR DE COMPUTADORES, EQUIPO PERIF�RICO Y PROGRAMAS INFORM�TICOS	</xsl:when>
                                        <xsl:when test=".= 	465200	">	VENTA AL POR MAYOR DE EQUIPO, PARTES Y PIEZAS ELECTR�NICOS Y DE TELECOMUNICACIONES	</xsl:when>
                                        <xsl:when test=".= 	465300	">	VENTA AL POR MAYOR DE MAQUINARIA, EQUIPO Y MATERIALES AGROPECUARIOS	</xsl:when>
                                        <xsl:when test=".= 	465901	">	VENTA AL POR MAYOR DE MAQUINARIA METAL�RGICA, PARA LA MINER�A, EXTRACCI�N DE PETR�LEO Y CONSTRUCCI�N	</xsl:when>
                                        <xsl:when test=".= 	465902	">	VENTA AL POR MAYOR DE MAQUINARIA PARA LA ELABORACI�N DE ALIMENTOS, BEBIDAS Y TABACO	</xsl:when>
                                        <xsl:when test=".= 	465903	">	VENTA AL POR MAYOR DE MAQUINARIA PARA LA INDUSTRIA TEXTIL, DEL CUERO Y DEL CALZADO	</xsl:when>
                                        <xsl:when test=".= 	465904	">	VENTA AL POR MAYOR DE MAQUINARIA Y EQUIPO DE OFICINA; VENTA AL POR MAYOR DE MUEBLES DE OFICINA	</xsl:when>
                                        <xsl:when test=".= 	465905	">	VENTA AL POR MAYOR DE EQUIPO DE TRANSPORTE(EXCEPTO VEH�CULOS AUTOMOTORES, MOTOCICLETAS Y BICICLETAS)	</xsl:when>
                                        <xsl:when test=".= 	465909	">	VENTA AL POR MAYOR DE OTROS TIPOS DE MAQUINARIA Y EQUIPO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	466100	">	VENTA AL POR MAYOR DE COMBUSTIBLES S�LIDOS, L�QUIDOS Y GASEOSOS Y PRODUCTOS CONEXOS	</xsl:when>
                                        <xsl:when test=".= 	466200	">	VENTA AL POR MAYOR DE METALES Y MINERALES METAL�FEROS	</xsl:when>
                                        <xsl:when test=".= 	466301	">	VENTA AL POR MAYOR DE MADERA EN BRUTO Y PRODUCTOS PRIMARIOS DE LA ELABORACI�N DE MADERA	</xsl:when>
                                        <xsl:when test=".= 	466302	">	VENTA AL POR MAYOR DE MATERIALES DE CONSTRUCCI�N, ART�CULOS DE FERRETER�A, GASFITER�A Y CALEFACCI�N	</xsl:when>
                                        <xsl:when test=".= 	466901	">	VENTA AL POR MAYOR DE PRODUCTOS QU�MICOS	</xsl:when>
                                        <xsl:when test=".= 	466902	">	VENTA AL POR MAYOR DE DESECHOS MET�LICOS (CHATARRA)	</xsl:when>
                                        <xsl:when test=".= 	466909	">	VENTA AL POR MAYOR DE DESPERDICIOS, DESECHOS Y OTROS PRODUCTOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	469000	">	VENTA AL POR MAYOR NO ESPECIALIZADA	</xsl:when>
                                        <xsl:when test=".= 	471100	">	VENTA AL POR MENOR EN COMERCIOS DE ALIMENTOS, BEBIDAS O TABACO (SUPERMERCADOS E HIPERMERCADOS)	</xsl:when>
                                        <xsl:when test=".= 	471910	">	VENTA AL POR MENOR EN COMERCIOS DE VESTUARIO Y PRODUCTOS PARA EL HOGAR (GRANDES TIENDAS)	</xsl:when>
                                        <xsl:when test=".= 	471990	">	OTRAS ACTIVIDADES DE VENTA AL POR MENOR EN COMERCIOS NO ESPECIALIZADOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	472101	">	VENTA AL POR MENOR DE ALIMENTOS EN COMERCIOS ESPECIALIZADOS (ALMACENES PEQUE�OS Y MINIMARKET)	</xsl:when>
                                        <xsl:when test=".= 	472102	">	VENTA AL POR MENOR EN COMERCIOS ESPECIALIZADOS DE CARNE Y PRODUCTOS C�RNICOS�	</xsl:when>
                                        <xsl:when test=".= 	472103	">	VENTA AL POR MENOR EN COMERCIOS ESPECIALIZADOS DE FRUTAS Y VERDURAS (VERDULER�AS)	</xsl:when>
                                        <xsl:when test=".= 	472104	">	VENTA AL POR MENOR EN COMERCIOS ESPECIALIZADOS DE PESCADO, MARISCOS Y PRODUCTOS CONEXOS	</xsl:when>
                                        <xsl:when test=".= 	472105	">	VENTA AL POR MENOR EN COMERCIOS ESPECIALIZADOS DE PRODUCTOS DE PANADER�A Y PASTELER�A	</xsl:when>
                                        <xsl:when test=".= 	472109	">	VENTA AL POR MENOR EN COMERCIOS ESPECIALIZADOS DE HUEVOS, CONFITES Y PRODUCTOS ALIMENTICIOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	472200	">	VENTA AL POR MENOR DE BEBIDAS ALCOH�LICAS Y NO ALCOH�LICAS EN COMERCIOS ESPECIALIZADOS (BOTILLER�AS)	</xsl:when>
                                        <xsl:when test=".= 	472300	">	VENTA AL POR MENOR DE TABACO Y PRODUCTOS DE TABACO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	473000	">	VENTA AL POR MENOR DE COMBUSTIBLES PARA VEH�CULOS AUTOMOTORES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	474100	">	VENTA AL POR MENOR DE COMPUTADORES, EQUIPO PERIF�RICO, PROGRAMAS INFORM�TICOS Y EQUIPO DE TELECOM.	</xsl:when>
                                        <xsl:when test=".= 	474200	">	VENTA AL POR MENOR DE EQUIPO DE SONIDO Y DE VIDEO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475100	">	VENTA AL POR MENOR DE TELAS, LANAS, HILOS Y SIMILARES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475201	">	VENTA AL POR MENOR DE ART�CULOS DE FERRETER�A Y MATERIALES DE CONSTRUCCI�N�	</xsl:when>
                                        <xsl:when test=".= 	475202	">	VENTA AL POR MENOR DE PINTURAS, BARNICES Y LACAS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475203	">	VENTA AL POR MENOR DE PRODUCTOS DE VIDRIO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475300	">	VENTA AL POR MENOR DE TAPICES, ALFOMBRAS Y CUBRIMIENTOS PARA PAREDES Y PISOS	</xsl:when>
                                        <xsl:when test=".= 	475901	">	VENTA AL POR MENOR DE MUEBLES Y COLCHONES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475902	">	VENTA AL POR MENOR DE INSTRUMENTOS MUSICALES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	475909	">	VENTA AL POR MENOR DE APARATOS EL�CTRICOS, TEXTILES PARA EL HOGAR Y OTROS ENSERES DOM�STICOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	476101	">	VENTA AL POR MENOR DE LIBROS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476102	">	VENTA AL POR MENOR DE DIARIOS Y REVISTAS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476103	">	VENTA AL POR MENOR DE ART�CULOS DE PAPELER�A Y ESCRITORIO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476200	">	VENTA AL POR MENOR DE GRABACIONES DE M�SICA Y DE VIDEO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476301	">	VENTA AL POR MENOR DE ART�CULOS DE CAZA Y PESCA EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476302	">	VENTA AL POR MENOR DE BICICLETAS Y SUS REPUESTOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	476309	">	VENTA AL POR MENOR DE OTROS ART�CULOS Y EQUIPOS DE DEPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	476400	">	VENTA AL POR MENOR DE JUEGOS Y JUGUETES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477101	">	VENTA AL POR MENOR DE CALZADO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477102	">	VENTA AL POR MENOR DE PRENDAS Y ACCESORIOS DE VESTIR EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477103	">	VENTA AL POR MENOR DE CARTERAS, MALETAS Y OTROS ACCESORIOS DE VIAJE EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477201	">	VENTA AL POR MENOR DE PRODUCTOS FARMAC�UTICOS Y MEDICINALES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477202	">	VENTA AL POR MENOR DE ART�CULOS ORTOP�DICOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477203	">	VENTA AL POR MENOR DE ART�CULOS DE PERFUMER�A, DE TOCADOR Y COSM�TICOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477310	">	VENTA AL POR MENOR DE GAS LICUADO EN BOMBONAS (CILINDROS) EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477391	">	VENTA AL POR MENOR DE ALIMENTO Y ACCESORIOS PARA MASCOTAS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477392	">	VENTA AL POR MENOR DE ARMAS Y MUNICIONES EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477393	">	VENTA AL POR MENOR DE ART�CULOS �PTICOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477394	">	VENTA AL POR MENOR DE ART�CULOS DE JOYER�A, BISUTER�A Y RELOJER�A EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477395	">	VENTA AL POR MENOR DE CARB�N, LE�A Y OTROS COMBUSTIBLES DE USO DOM�STICO EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477396	">	VENTA AL POR MENOR DE RECUERDOS, ARTESAN�AS Y ART�CULOS RELIGIOSOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477397	">	VENTA AL POR MENOR DE FLORES, PLANTAS, ARBOLES, SEMILLAS Y ABONOS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477398	">	VENTA AL POR MENOR DE MASCOTAS EN COMERCIOS ESPECIALIZADOS	</xsl:when>
                                        <xsl:when test=".= 	477399	">	VENTA AL POR MENOR DE OTROS PRODUCTOS EN COMERCIOS ESPECIALIZADOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	477401	">	VENTA AL POR MENOR DE ANTIG�EDADES EN COMERCIOS	</xsl:when>
                                        <xsl:when test=".= 	477402	">	VENTA AL POR MENOR DE ROPA USADA EN COMERCIOS	</xsl:when>
                                        <xsl:when test=".= 	477409	">	VENTA AL POR MENOR DE OTROS ART�CULOS DE SEGUNDA MANO EN COMERCIOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	478100	">	VENTA AL POR MENOR DE ALIMENTOS, BEBIDAS Y TABACO EN PUESTOS DE VENTA Y MERCADOS (INCLUYE FERIAS)	</xsl:when>
                                        <xsl:when test=".= 	478200	">	VENTA AL POR MENOR DE PRODUCTOS TEXTILES, PRENDAS DE VESTIR Y CALZADO EN PUESTOS DE VENTA Y MERCADOS	</xsl:when>
                                        <xsl:when test=".= 	478900	">	VENTA AL POR MENOR DE OTROS PRODUCTOS EN PUESTOS DE VENTA Y MERCADOS (INCLUYE FERIAS)	</xsl:when>
                                        <xsl:when test=".= 	479100	">	VENTA AL POR MENOR POR CORREO, POR INTERNET Y V�A TELEF�NICA	</xsl:when>
                                        <xsl:when test=".= 	479901	">	VENTA AL POR MENOR REALIZADA POR INDEPENDIENTES EN LA LOCOMOCI�N COLECTIVA (LEY 20.388)	</xsl:when>
                                        <xsl:when test=".= 	479902	">	VENTA AL POR MENOR MEDIANTE MAQUINAS EXPENDEDORAS	</xsl:when>
                                        <xsl:when test=".= 	479903	">	VENTA AL POR MENOR POR COMISIONISTAS (NO DEPENDIENTES DE COMERCIOS)	</xsl:when>
                                        <xsl:when test=".= 	479909	">	OTRAS ACTIVIDADES DE VENTA POR MENOR NO REALIZADAS EN COMERCIOS, PUESTOS DE VENTA O MERCADOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	491100	">	TRANSPORTE INTERURBANO DE PASAJEROS POR FERROCARRIL	</xsl:when>
                                        <xsl:when test=".= 	491200	">	TRANSPORTE DE CARGA POR FERROCARRIL	</xsl:when>
                                        <xsl:when test=".= 	492110	">	TRANSPORTE URBANO Y SUBURBANO DE PASAJEROS V�A METRO Y METROTREN	</xsl:when>
                                        <xsl:when test=".= 	492120	">	TRANSPORTE URBANO Y SUBURBANO DE PASAJEROS V�A LOCOMOCI�N COLECTIVA	</xsl:when>
                                        <xsl:when test=".= 	492130	">	TRANSPORTE DE PASAJEROS V�A TAXI COLECTIVO	</xsl:when>
                                        <xsl:when test=".= 	492190	">	OTRAS ACTIVIDADES DE TRANSPORTE URBANO Y SUBURBANO DE PASAJEROS POR V�A TERRESTRE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	492210	">	SERVICIOS DE TRANSPORTE DE ESCOLARES	</xsl:when>
                                        <xsl:when test=".= 	492220	">	SERVICIOS DE TRANSPORTE DE TRABAJADORES	</xsl:when>
                                        <xsl:when test=".= 	492230	">	SERVICIOS DE TRANSPORTE DE PASAJEROS EN TAXIS LIBRES Y RADIOTAXIS	</xsl:when>
                                        <xsl:when test=".= 	492240	">	SERVICIOS DE TRANSPORTE A TURISTAS	</xsl:when>
                                        <xsl:when test=".= 	492250	">	TRANSPORTE DE PASAJEROS EN BUSES INTERURBANOS�	</xsl:when>
                                        <xsl:when test=".= 	492290	">	OTRAS ACTIVIDADES DE TRANSPORTE DE PASAJEROS POR V�A TERRESTRE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	492300	">	TRANSPORTE DE CARGA POR CARRETERA	</xsl:when>
                                        <xsl:when test=".= 	493010	">	TRANSPORTE POR OLEODUCTOS	</xsl:when>
                                        <xsl:when test=".= 	493020	">	TRANSPORTE POR GASODUCTOS	</xsl:when>
                                        <xsl:when test=".= 	493090	">	OTRAS ACTIVIDADES DE TRANSPORTE POR TUBER�AS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	501100	">	TRANSPORTE DE PASAJEROS MAR�TIMO Y DE CABOTAJE	</xsl:when>
                                        <xsl:when test=".= 	501200	">	TRANSPORTE DE CARGA MAR�TIMO Y DE CABOTAJE	</xsl:when>
                                        <xsl:when test=".= 	502100	">	TRANSPORTE DE PASAJEROS POR V�AS DE NAVEGACI�N INTERIORES	</xsl:when>
                                        <xsl:when test=".= 	502200	">	TRANSPORTE DE CARGA POR V�AS DE NAVEGACI�N INTERIORES	</xsl:when>
                                        <xsl:when test=".= 	511000	">	TRANSPORTE DE PASAJEROS POR V�A A�REA	</xsl:when>
                                        <xsl:when test=".= 	512000	">	TRANSPORTE DE CARGA POR V�A A�REA	</xsl:when>
                                        <xsl:when test=".= 	521001	">	EXPLOTACI�N DE FRIGOR�FICOS PARA ALMACENAMIENTO Y DEP�SITO	</xsl:when>
                                        <xsl:when test=".= 	521009	">	OTROS SERVICIOS DE ALMACENAMIENTO Y DEP�SITO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	522110	">	EXPLOTACI�N DE TERMINALES TERRESTRES DE PASAJEROS	</xsl:when>
                                        <xsl:when test=".= 	522120	">	EXPLOTACI�N DE ESTACIONAMIENTOS DE VEH�CULOS AUTOMOTORES Y PARQU�METROS	</xsl:when>
                                        <xsl:when test=".= 	522130	">	SERVICIOS PRESTADOS POR CONCESIONARIOS DE CARRETERAS	</xsl:when>
                                        <xsl:when test=".= 	522190	">	ACTIVIDADES DE SERVICIOS VINCULADAS AL TRANSPORTE TERRESTRE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	522200	">	ACTIVIDADES DE SERVICIOS VINCULADAS AL TRANSPORTE ACU�TICO	</xsl:when>
                                        <xsl:when test=".= 	522300	">	ACTIVIDADES DE SERVICIOS VINCULADAS AL TRANSPORTE A�REO	</xsl:when>
                                        <xsl:when test=".= 	522400	">	MANIPULACI�N DE LA CARGA	</xsl:when>
                                        <xsl:when test=".= 	522910	">	AGENCIAS DE ADUANAS	</xsl:when>
                                        <xsl:when test=".= 	522920	">	AGENCIAS DE NAVES	</xsl:when>
                                        <xsl:when test=".= 	522990	">	OTRAS ACTIVIDADES DE APOYO AL TRANSPORTE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	531000	">	ACTIVIDADES POSTALES	</xsl:when>
                                        <xsl:when test=".= 	532000	">	ACTIVIDADES DE MENSAJER�A	</xsl:when>
                                        <xsl:when test=".= 	551001	">	ACTIVIDADES DE HOTELES	</xsl:when>
                                        <xsl:when test=".= 	551002	">	ACTIVIDADES DE MOTELES	</xsl:when>
                                        <xsl:when test=".= 	551003	">	ACTIVIDADES DE RESIDENCIALES PARA TURISTAS	</xsl:when>
                                        <xsl:when test=".= 	551009	">	OTRAS ACTIVIDADES DE ALOJAMIENTO PARA TURISTAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	552000	">	ACTIVIDADES DE CAMPING Y DE PARQUES PARA CASAS RODANTES	</xsl:when>
                                        <xsl:when test=".= 	559001	">	ACTIVIDADES DE RESIDENCIALES PARA ESTUDIANTES Y TRABAJADORES�	</xsl:when>
                                        <xsl:when test=".= 	559009	">	OTRAS ACTIVIDADES DE ALOJAMIENTO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	561000	">	ACTIVIDADES DE RESTAURANTES Y DE SERVICIO M�VIL DE COMIDAS	</xsl:when>
                                        <xsl:when test=".= 	562100	">	SUMINISTRO DE COMIDAS POR ENCARGO (SERVICIOS DE BANQUETER�A)	</xsl:when>
                                        <xsl:when test=".= 	562900	">	SUMINISTRO INDUSTRIAL DE COMIDAS POR ENCARGO; CONCESI�N DE SERVICIOS DE ALIMENTACI�N�	</xsl:when>
                                        <xsl:when test=".= 	563001	">	ACTIVIDADES DE DISCOTECAS Y CABARET (NIGHT CLUB), CON PREDOMINIO DEL SERVICIO DE BEBIDAS	</xsl:when>
                                        <xsl:when test=".= 	563009	">	OTRAS ACTIVIDADES DE SERVICIO DE BEBIDAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	581100	">	EDICI�N DE LIBROS	</xsl:when>
                                        <xsl:when test=".= 	581200	">	EDICI�N DE DIRECTORIOS Y LISTAS DE CORREO	</xsl:when>
                                        <xsl:when test=".= 	581300	">	EDICI�N DE DIARIOS, REVISTAS Y OTRAS PUBLICACIONES PERI�DICAS	</xsl:when>
                                        <xsl:when test=".= 	581900	">	OTRAS ACTIVIDADES DE EDICI�N	</xsl:when>
                                        <xsl:when test=".= 	582000	">	EDICI�N DE PROGRAMAS INFORM�TICOS	</xsl:when>
                                        <xsl:when test=".= 	591100	">	ACTIVIDADES DE PRODUCCI�N DE PEL�CULAS CINEMATOGR�FICAS, VIDEOS Y PROGRAMAS DE TELEVISI�N	</xsl:when>
                                        <xsl:when test=".= 	591200	">	ACTIVIDADES DE POSTPRODUCCI�N DE PEL�CULAS CINEMATOGR�FICAS, VIDEOS Y PROGRAMAS DE TELEVISI�N	</xsl:when>
                                        <xsl:when test=".= 	591300	">	ACTIVIDADES DE DISTRIBUCI�N DE PEL�CULAS CINEMATOGR�FICAS, VIDEOS Y PROGRAMAS DE TELEVISI�N	</xsl:when>
                                        <xsl:when test=".= 	591400	">	ACTIVIDADES DE EXHIBICI�N DE PEL�CULAS CINEMATOGR�FICAS Y CINTAS DE VIDEO	</xsl:when>
                                        <xsl:when test=".= 	592000	">	ACTIVIDADES DE GRABACI�N DE SONIDO Y EDICI�N DE M�SICA	</xsl:when>
                                        <xsl:when test=".= 	601000	">	TRANSMISIONES DE RADIO	</xsl:when>
                                        <xsl:when test=".= 	602000	">	PROGRAMACI�N Y TRANSMISIONES DE TELEVISI�N	</xsl:when>
                                        <xsl:when test=".= 	611010	">	TELEFON�A FIJA	</xsl:when>
                                        <xsl:when test=".= 	611020	">	TELEFON�A LARGA DISTANCIA	</xsl:when>
                                        <xsl:when test=".= 	611030	">	TELEVISI�N DE PAGO POR CABLE	</xsl:when>
                                        <xsl:when test=".= 	611090	">	OTROS SERVICIOS DE TELECOMUNICACIONES AL�MBRICAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	612010	">	TELEFON�A M�VIL CELULAR	</xsl:when>
                                        <xsl:when test=".= 	612020	">	RADIOCOMUNICACIONES M�VILES	</xsl:when>
                                        <xsl:when test=".= 	612030	">	TELEVISI�N DE PAGO INAL�MBRICA	</xsl:when>
                                        <xsl:when test=".= 	612090	">	OTROS SERVICIOS DE TELECOMUNICACIONES INAL�MBRICAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	613010	">	TELEFON�A M�VIL SATELITAL	</xsl:when>
                                        <xsl:when test=".= 	613020	">	TELEVISI�N DE PAGO SATELITAL	</xsl:when>
                                        <xsl:when test=".= 	613090	">	OTROS SERVICIOS DE TELECOMUNICACIONES POR SAT�LITE N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	619010	">	CENTROS DE LLAMADOS Y CENTROS DE ACCESO A INTERNET	</xsl:when>
                                        <xsl:when test=".= 	619090	">	OTRAS ACTIVIDADES DE TELECOMUNICACIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	620100	">	ACTIVIDADES DE PROGRAMACI�N INFORM�TICA	</xsl:when>
                                        <xsl:when test=".= 	620200	">	ACTIVIDADES DE CONSULTOR�A DE INFORM�TICA Y DE GESTI�N DE INSTALACIONES INFORM�TICAS	</xsl:when>
                                        <xsl:when test=".= 	620900	">	OTRAS ACTIVIDADES DE TECNOLOG�A DE LA INFORMACI�N Y DE SERVICIOS INFORM�TICOS	</xsl:when>
                                        <xsl:when test=".= 	631100	">	PROCESAMIENTO DE DATOS, HOSPEDAJE Y ACTIVIDADES CONEXAS	</xsl:when>
                                        <xsl:when test=".= 	631200	">	PORTALES WEB	</xsl:when>
                                        <xsl:when test=".= 	639100	">	ACTIVIDADES DE AGENCIAS DE NOTICIAS	</xsl:when>
                                        <xsl:when test=".= 	639900	">	OTRAS ACTIVIDADES DE SERVICIOS DE INFORMACI�N N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	641100	">	BANCA CENTRAL	</xsl:when>
                                        <xsl:when test=".= 	641910	">	ACTIVIDADES BANCARIAS	</xsl:when>
                                        <xsl:when test=".= 	641990	">	OTROS TIPOS DE INTERMEDIACI�N MONETARIA N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	642000	">	ACTIVIDADES DE SOCIEDADES DE CARTERA	</xsl:when>
                                        <xsl:when test=".= 	643000	">	FONDOS Y SOCIEDADES DE INVERSI�N Y ENTIDADES FINANCIERAS SIMILARES	</xsl:when>
                                        <xsl:when test=".= 	649100	">	LEASING FINANCIERO	</xsl:when>
                                        <xsl:when test=".= 	649201	">	FINANCIERAS	</xsl:when>
                                        <xsl:when test=".= 	649202	">	ACTIVIDADES DE CR�DITO PRENDARIO	</xsl:when>
                                        <xsl:when test=".= 	649203	">	CAJAS DE COMPENSACI�N	</xsl:when>
                                        <xsl:when test=".= 	649209	">	OTRAS ACTIVIDADES DE CONCESI�N DE CR�DITO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	649900	">	OTRAS ACTIVIDADES DE SERVICIOS FINANCIEROS, EXCEPTO LAS DE SEGUROS Y FONDOS DE PENSIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	651100	">	SEGUROS DE VIDA	</xsl:when>
                                        <xsl:when test=".= 	651210	">	SEGUROS GENERALES, EXCEPTO ACTIVIDADES DE ISAPRES	</xsl:when>
                                        <xsl:when test=".= 	651220	">	ACTIVIDADES DE ISAPRES	</xsl:when>
                                        <xsl:when test=".= 	652000	">	REASEGUROS	</xsl:when>
                                        <xsl:when test=".= 	653000	">	FONDOS DE PENSIONES	</xsl:when>
                                        <xsl:when test=".= 	661100	">	ADMINISTRACI�N DE MERCADOS FINANCIEROS	</xsl:when>
                                        <xsl:when test=".= 	661201	">	ACTIVIDADES DE SECURITIZADORAS	</xsl:when>
                                        <xsl:when test=".= 	661202	">	CORREDORES DE BOLSA	</xsl:when>
                                        <xsl:when test=".= 	661203	">	AGENTES DE VALORES	</xsl:when>
                                        <xsl:when test=".= 	661204	">	ACTIVIDADES DE CASAS DE CAMBIO Y OPERADORES DE DIVISA	</xsl:when>
                                        <xsl:when test=".= 	661209	">	OTROS SERVICIOS DE CORRETAJE DE VALORES Y COMMODITIES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	661901	">	ACTIVIDADES DE C�MARAS DE COMPENSACI�N	</xsl:when>
                                        <xsl:when test=".= 	661902	">	ADMINISTRACI�N DE TARJETAS DE CR�DITO	</xsl:when>
                                        <xsl:when test=".= 	661903	">	EMPRESAS DE ASESOR�A Y CONSULTOR�A EN INVERSI�N FINANCIERA; SOCIEDADES DE APOYO AL GIRO	</xsl:when>
                                        <xsl:when test=".= 	661904	">	ACTIVIDADES DE CLASIFICADORAS DE RIESGO	</xsl:when>
                                        <xsl:when test=".= 	661909	">	OTRAS ACTIVIDADES AUXILIARES DE LAS ACTIVIDADES DE SERVICIOS FINANCIEROS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	662100	">	EVALUACI�N DE RIESGOS Y DA�OS (INCLUYE ACTIVIDADES DE LIQUIDADORES DE SEGUROS)	</xsl:when>
                                        <xsl:when test=".= 	662200	">	ACTIVIDADES DE AGENTES Y CORREDORES DE SEGUROS	</xsl:when>
                                        <xsl:when test=".= 	662900	">	OTRAS ACTIVIDADES AUXILIARES DE LAS ACTIVIDADES DE SEGUROS Y FONDOS DE PENSIONES	</xsl:when>
                                        <xsl:when test=".= 	663010	">	ADMINISTRADORAS DE FONDOS DE PENSIONES (AFP)	</xsl:when>
                                        <xsl:when test=".= 	663091	">	ADMINISTRADORAS DE FONDOS DE INVERSI�N	</xsl:when>
                                        <xsl:when test=".= 	663092	">	ADMINISTRADORAS DE FONDOS MUTUOS	</xsl:when>
                                        <xsl:when test=".= 	663093	">	ADMINISTRADORAS DE FICES (FONDOS DE INVERSI�N DE CAPITAL EXTRANJERO)	</xsl:when>
                                        <xsl:when test=".= 	663094	">	ADMINISTRADORAS DE FONDOS PARA LA VIVIENDA	</xsl:when>
                                        <xsl:when test=".= 	663099	">	ADMINISTRADORAS DE FONDOS PARA OTROS FINES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	681011	">	ALQUILER DE BIENES INMUEBLES AMOBLADOS O CON EQUIPOS Y MAQUINARIAS	</xsl:when>
                                        <xsl:when test=".= 	681012	">	COMPRA, VENTA Y ALQUILER (EXCEPTO AMOBLADOS) DE INMUEBLES	</xsl:when>
                                        <xsl:when test=".= 	681020	">	SERVICIOS IMPUTADOS DE ALQUILER DE VIVIENDAS	</xsl:when>
                                        <xsl:when test=".= 	682000	">	ACTIVIDADES INMOBILIARIAS REALIZADAS A CAMBIO DE UNA RETRIBUCI�N O POR CONTRATA	</xsl:when>
                                        <xsl:when test=".= 	691001	">	SERVICIOS DE ASESORAMIENTO Y REPRESENTACI�N JUR�DICA	</xsl:when>
                                        <xsl:when test=".= 	691002	">	SERVICIO NOTARIAL	</xsl:when>
                                        <xsl:when test=".= 	691003	">	CONSERVADOR DE BIENES RA�CES	</xsl:when>
                                        <xsl:when test=".= 	691004	">	RECEPTORES JUDICIALES	</xsl:when>
                                        <xsl:when test=".= 	691009	">	SERVICIOS DE ARBITRAJE; S�NDICOS DE QUIEBRA Y PERITOS JUDICIALES; OTRAS ACTIVIDADES JUR�DICAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	692000	">	ACTIVIDADES DE CONTABILIDAD, TENEDUR�A DE LIBROS Y AUDITOR�A; CONSULTOR�A FISCAL	</xsl:when>
                                        <xsl:when test=".= 	701000	">	ACTIVIDADES DE OFICINAS PRINCIPALES	</xsl:when>
                                        <xsl:when test=".= 	702000	">	ACTIVIDADES DE CONSULTOR�A DE GESTI�N	</xsl:when>
                                        <xsl:when test=".= 	711001	">	SERVICIOS DE ARQUITECTURA (DISE�O DE EDIFICIOS, DIBUJO DE PLANOS DE CONSTRUCCI�N, ENTRE OTROS)	</xsl:when>
                                        <xsl:when test=".= 	711002	">	EMPRESAS DE SERVICIOS DE INGENIER�A Y ACTIVIDADES CONEXAS DE CONSULTOR�A T�CNICA�	</xsl:when>
                                        <xsl:when test=".= 	711003	">	SERVICIOS PROFESIONALES DE INGENIER�A Y ACTIVIDADES CONEXAS DE CONSULTOR�A T�CNICA�	</xsl:when>
                                        <xsl:when test=".= 	712001	">	ACTIVIDADES DE PLANTAS DE REVISI�N T�CNICA PARA VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	712009	">	OTROS SERVICIOS DE ENSAYOS Y AN�LISIS T�CNICOS (EXCEPTO ACTIVIDADES DE PLANTAS DE REVISI�N T�CNICA)	</xsl:when>
                                        <xsl:when test=".= 	721000	">	INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS NATURALES Y LA INGENIER�A	</xsl:when>
                                        <xsl:when test=".= 	722000	">	INVESTIGACIONES Y DESARROLLO EXPERIMENTAL EN EL CAMPO DE LAS CIENCIAS SOCIALES Y LAS HUMANIDADES	</xsl:when>
                                        <xsl:when test=".= 	731001	">	SERVICIOS DE PUBLICIDAD PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	731002	">	SERVICIOS DE PUBLICIDAD PRESTADOS POR PROFESIONALES	</xsl:when>
                                        <xsl:when test=".= 	732000	">	ESTUDIOS DE MERCADO Y ENCUESTAS DE OPINI�N P�BLICA	</xsl:when>
                                        <xsl:when test=".= 	741001	">	ACTIVIDADES DE DISE�O DE VESTUARIO	</xsl:when>
                                        <xsl:when test=".= 	741002	">	ACTIVIDADES DE DISE�O Y DECORACI�N DE INTERIORES	</xsl:when>
                                        <xsl:when test=".= 	741009	">	OTRAS ACTIVIDADES ESPECIALIZADAS DE DISE�O N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	742001	">	SERVICIOS DE REVELADO, IMPRESI�N Y AMPLIACI�N DE FOTOGRAF�AS	</xsl:when>
                                        <xsl:when test=".= 	742002	">	SERVICIOS Y ACTIVIDADES DE FOTOGRAF�A�	</xsl:when>
                                        <xsl:when test=".= 	742003	">	SERVICIOS PERSONALES DE FOTOGRAF�A�	</xsl:when>
                                        <xsl:when test=".= 	749001	">	ASESOR�A Y GESTI�N EN LA COMPRA O VENTA DE PEQUE�AS Y MEDIANAS EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	749002	">	SERVICIOS DE TRADUCCI�N E INTERPRETACI�N PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	749003	">	SERVICIOS PERSONALES DE TRADUCCI�N E INTERPRETACI�N	</xsl:when>
                                        <xsl:when test=".= 	749004	">	ACTIVIDADES DE AGENCIAS Y AGENTES DE REPRESENTACI�N DE ACTORES, DEPORTISTAS Y OTRAS FIGURAS P�BLICAS	</xsl:when>
                                        <xsl:when test=".= 	749009	">	OTRAS ACTIVIDADES PROFESIONALES, CIENT�FICAS Y T�CNICAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	750001	">	ACTIVIDADES DE CL�NICAS VETERINARIAS	</xsl:when>
                                        <xsl:when test=".= 	750002	">	ACTIVIDADES DE VETERINARIOS, T�CNICOS Y OTRO PERSONAL AUXILIAR, PRESTADOS DE FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".= 	771000	">	ALQUILER DE VEH�CULOS AUTOMOTORES SIN CHOFER	</xsl:when>
                                        <xsl:when test=".= 	772100	">	ALQUILER Y ARRENDAMIENTO DE EQUIPO RECREATIVO Y DEPORTIVO	</xsl:when>
                                        <xsl:when test=".= 	772200	">	ALQUILER DE CINTAS DE VIDEO Y DISCOS	</xsl:when>
                                        <xsl:when test=".= 	772900	">	ALQUILER DE OTROS EFECTOS PERSONALES Y ENSERES DOM�STICOS (INCLUYE MOBILIARIO PARA EVENTOS)	</xsl:when>
                                        <xsl:when test=".= 	773001	">	ALQUILER DE EQUIPOS DE TRANSPORTE SIN OPERARIO, EXCEPTO VEH�CULOS AUTOMOTORES	</xsl:when>
                                        <xsl:when test=".= 	773002	">	ALQUILER DE MAQUINARIA Y EQUIPO AGROPECUARIO, FORESTAL, DE CONSTRUCCI�N E ING. CIVIL, SIN OPERARIOS	</xsl:when>
                                        <xsl:when test=".= 	773003	">	ALQUILER DE MAQUINARIA Y EQUIPO DE OFICINA, SIN OPERARIOS (SIN SERVICIO ADMINISTRATIVO)	</xsl:when>
                                        <xsl:when test=".= 	773009	">	ALQUILER DE OTROS TIPOS DE MAQUINARIAS Y EQUIPOS SIN OPERARIO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	774000	">	ARRENDAMIENTO DE PROPIEDAD INTELECTUAL Y SIMILARES, EXCEPTO OBRAS PROTEGIDAS POR DERECHOS DE AUTOR	</xsl:when>
                                        <xsl:when test=".= 	781000	">	ACTIVIDADES DE AGENCIAS DE EMPLEO	</xsl:when>
                                        <xsl:when test=".= 	782000	">	ACTIVIDADES DE AGENCIAS DE EMPLEO TEMPORAL (INCLUYE EMPRESAS DE SERVICIOS TRANSITORIOS)	</xsl:when>
                                        <xsl:when test=".= 	783000	">	OTRAS ACTIVIDADES DE DOTACI�N DE RECURSOS HUMANOS	</xsl:when>
                                        <xsl:when test=".= 	791100	">	ACTIVIDADES DE AGENCIAS DE VIAJES	</xsl:when>
                                        <xsl:when test=".= 	791200	">	ACTIVIDADES DE OPERADORES TUR�STICOS	</xsl:when>
                                        <xsl:when test=".= 	799000	">	OTROS SERVICIOS DE RESERVAS Y ACTIVIDADES CONEXAS (INCLUYE VENTA DE ENTRADAS PARA TEATRO, Y OTROS)	</xsl:when>
                                        <xsl:when test=".= 	801001	">	SERVICIOS DE SEGURIDAD PRIVADA PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	801002	">	SERVICIO DE TRANSPORTE DE VALORES EN VEH�CULOS BLINDADOS	</xsl:when>
                                        <xsl:when test=".= 	801003	">	SERVICIOS DE SEGURIDAD PRIVADA PRESTADOS POR INDEPENDIENTES	</xsl:when>
                                        <xsl:when test=".= 	802000	">	ACTIVIDADES DE SERVICIOS DE SISTEMAS DE SEGURIDAD (INCLUYE SERVICIOS DE CERRAJER�A)	</xsl:when>
                                        <xsl:when test=".= 	803000	">	ACTIVIDADES DE INVESTIGACI�N (INCLUYE ACTIVIDADES DE INVESTIGADORES Y DETECTIVES PRIVADOS)	</xsl:when>
                                        <xsl:when test=".= 	811000	">	ACTIVIDADES COMBINADAS DE APOYO A INSTALACIONES	</xsl:when>
                                        <xsl:when test=".= 	812100	">	LIMPIEZA GENERAL DE EDIFICIOS	</xsl:when>
                                        <xsl:when test=".= 	812901	">	DESRATIZACI�N, DESINFECCI�N Y EXTERMINIO DE PLAGAS NO AGR�COLAS	</xsl:when>
                                        <xsl:when test=".= 	812909	">	OTRAS ACTIVIDADES DE LIMPIEZA DE EDIFICIOS E INSTALACIONES INDUSTRIALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	813000	">	ACTIVIDADES DE PAISAJISMO, SERVICIOS DE JARDINER�A Y SERVICIOS CONEXOS	</xsl:when>
                                        <xsl:when test=".= 	821100	">	ACTIVIDADES COMBINADAS DE SERVICIOS ADMINISTRATIVOS DE OFICINA	</xsl:when>
                                        <xsl:when test=".= 	821900	">	FOTOCOPIADO, PREPARACI�N DE DOCUMENTOS Y OTRAS ACTIVIDADES ESPECIALIZADAS DE APOYO DE OFICINA	</xsl:when>
                                        <xsl:when test=".= 	822000	">	ACTIVIDADES DE CALL-CENTER	</xsl:when>
                                        <xsl:when test=".= 	823000	">	ORGANIZACI�N DE CONVENCIONES Y EXPOSICIONES COMERCIALES	</xsl:when>
                                        <xsl:when test=".= 	829110	">	ACTIVIDADES DE AGENCIAS DE COBRO	</xsl:when>
                                        <xsl:when test=".= 	829120	">	ACTIVIDADES DE AGENCIAS DE CALIFICACI�N CREDITICIA	</xsl:when>
                                        <xsl:when test=".= 	829200	">	ACTIVIDADES DE ENVASADO Y EMPAQUETADO	</xsl:when>
                                        <xsl:when test=".= 	829900	">	OTRAS ACTIVIDADES DE SERVICIOS DE APOYO A LAS EMPRESAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	841100	">	ACTIVIDADES DE LA ADMINISTRACI�N P�BLICA EN GENERAL	</xsl:when>
                                        <xsl:when test=".= 	841200	">	REGULACI�N DE LAS ACTIVIDADES DE ORGANISMOS QUE PRESTAN SERVICIOS SANITARIOS, EDUCATIVOS, CULTURALES	</xsl:when>
                                        <xsl:when test=".= 	841300	">	REGULACI�N Y FACILITACI�N DE LA ACTIVIDAD ECON�MICA	</xsl:when>
                                        <xsl:when test=".= 	842100	">	RELACIONES EXTERIORES	</xsl:when>
                                        <xsl:when test=".= 	842200	">	ACTIVIDADES DE DEFENSA	</xsl:when>
                                        <xsl:when test=".= 	842300	">	ACTIVIDADES DE MANTENIMIENTO DEL ORDEN P�BLICO Y DE SEGURIDAD	</xsl:when>
                                        <xsl:when test=".= 	843010	">	FONDO NACIONAL DE SALUD (FONASA)�	</xsl:when>
                                        <xsl:when test=".= 	843020	">	INSTITUTO DE PREVISI�N SOCIAL (IPS)	</xsl:when>
                                        <xsl:when test=".= 	843090	">	OTROS PLANES DE SEGURIDAD SOCIAL DE AFILIACI�N OBLIGATORIA N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	850011	">	ENSE�ANZA PREESCOLAR P�BLICA	</xsl:when>
                                        <xsl:when test=".= 	850012	">	ENSE�ANZA PRIMARIA, SECUNDARIA CIENT�FICO HUMANISTA Y T�CNICO PROFESIONAL P�BLICA	</xsl:when>
                                        <xsl:when test=".= 	850021	">	ENSE�ANZA PREESCOLAR PRIVADA	</xsl:when>
                                        <xsl:when test=".= 	850022	">	ENSE�ANZA PRIMARIA, SECUNDARIA CIENT�FICO HUMANISTA Y T�CNICO PROFESIONAL PRIVADA	</xsl:when>
                                        <xsl:when test=".= 	853110	">	ENSE�ANZA SUPERIOR EN UNIVERSIDADES P�BLICAS	</xsl:when>
                                        <xsl:when test=".= 	853120	">	ENSE�ANZA SUPERIOR EN UNIVERSIDADES PRIVADAS	</xsl:when>
                                        <xsl:when test=".= 	853201	">	ENSE�ANZA SUPERIOR EN INSTITUTOS PROFESIONALES	</xsl:when>
                                        <xsl:when test=".= 	853202	">	ENSE�ANZA SUPERIOR EN CENTROS DE FORMACI�N T�CNICA	</xsl:when>
                                        <xsl:when test=".= 	854100	">	ENSE�ANZA DEPORTIVA Y RECREATIVA	</xsl:when>
                                        <xsl:when test=".= 	854200	">	ENSE�ANZA CULTURAL	</xsl:when>
                                        <xsl:when test=".= 	854901	">	ENSE�ANZA PREUNIVERSITARIA	</xsl:when>
                                        <xsl:when test=".= 	854902	">	SERVICIOS PERSONALES DE EDUCACI�N	</xsl:when>
                                        <xsl:when test=".= 	854909	">	OTROS TIPOS DE ENSE�ANZA N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	855000	">	ACTIVIDADES DE APOYO A LA ENSE�ANZA	</xsl:when>
                                        <xsl:when test=".= 	861010	">	ACTIVIDADES DE HOSPITALES Y CL�NICAS P�BLICAS	</xsl:when>
                                        <xsl:when test=".= 	861020	">	ACTIVIDADES DE HOSPITALES Y CL�NICAS PRIVADAS	</xsl:when>
                                        <xsl:when test=".= 	862010	">	ACTIVIDADES DE CENTROS DE SALUD MUNICIPALIZADOS (SERVICIOS DE SALUD P�BLICA)	</xsl:when>
                                        <xsl:when test=".= 	862021	">	CENTROS M�DICOS PRIVADOS (ESTABLECIMIENTOS DE ATENCI�N AMBULATORIA)	</xsl:when>
                                        <xsl:when test=".= 	862022	">	CENTROS DE ATENCI�N ODONTOL�GICA PRIVADOS (ESTABLECIMIENTOS DE ATENCI�N AMBULATORIA)	</xsl:when>
                                        <xsl:when test=".= 	862031	">	SERVICIOS DE M�DICOS PRESTADOS DE FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".= 	862032	">	SERVICIOS DE ODONT�LOGOS PRESTADOS DE FORMA INDEPENDIENTE	</xsl:when>
                                        <xsl:when test=".= 	869010	">	ACTIVIDADES DE LABORATORIOS CL�NICOS Y BANCOS DE SANGRE	</xsl:when>
                                        <xsl:when test=".= 	869091	">	OTROS SERVICIOS DE ATENCI�N DE LA SALUD HUMANA PRESTADOS POR EMPRESAS	</xsl:when>
                                        <xsl:when test=".= 	869092	">	SERVICIOS PRESTADOS DE FORMA INDEPENDIENTE POR OTROS PROFESIONALES DE LA SALUD	</xsl:when>
                                        <xsl:when test=".= 	871000	">	ACTIVIDADES DE ATENCI�N DE ENFERMER�A EN INSTITUCIONES	</xsl:when>
                                        <xsl:when test=".= 	872000	">	ACTIVIDADES DE ATENCI�N EN INSTITUCIONES PARA PERSONAS CON DISCAPACIDAD MENTAL Y TOXIC�MANOS	</xsl:when>
                                        <xsl:when test=".= 	873000	">	ACTIVIDADES DE ATENCI�N EN INSTITUCIONES PARA PERSONAS DE EDAD Y PERSONAS CON DISCAPACIDAD F�SICA	</xsl:when>
                                        <xsl:when test=".= 	879000	">	OTRAS ACTIVIDADES DE ATENCI�N EN INSTITUCIONES	</xsl:when>
                                        <xsl:when test=".= 	881000	">	ACTIVIDADES DE ASISTENCIA SOCIAL SIN ALOJAMIENTO PARA PERSONAS DE EDAD Y PERSONAS CON DISCAPACIDAD	</xsl:when>
                                        <xsl:when test=".= 	889000	">	OTRAS ACTIVIDADES DE ASISTENCIA SOCIAL SIN ALOJAMIENTO	</xsl:when>
                                        <xsl:when test=".= 	900001	">	SERVICIOS DE PRODUCCI�N DE OBRAS DE TEATRO, CONCIERTOS, ESPECT�CULOS DE DANZA, OTRAS PROD. ESC�NICAS	</xsl:when>
                                        <xsl:when test=".= 	900002	">	ACTIVIDADES ART�STICAS REALIZADAS POR BANDAS DE M�SICA, COMPA��AS DE TEATRO, CIRCENSES Y SIMILARES	</xsl:when>
                                        <xsl:when test=".= 	900003	">	ACTIVIDADES DE ARTISTAS REALIZADAS DE FORMA INDEPENDIENTE: ACTORES, M�SICOS, ESCRITORES, ENTRE OTROS	</xsl:when>
                                        <xsl:when test=".= 	900004	">	SERVICIOS PRESTADOS POR PERIODISTAS INDEPENDIENTES	</xsl:when>
                                        <xsl:when test=".= 	900009	">	OTRAS ACTIVIDADES CREATIVAS, ART�STICAS Y DE ENTRETENIMIENTO N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	910100	">	ACTIVIDADES DE BIBLIOTECAS Y ARCHIVOS	</xsl:when>
                                        <xsl:when test=".= 	910200	">	ACTIVIDADES DE MUSEOS, GESTI�N DE LUGARES Y EDIFICIOS HIST�RICOS	</xsl:when>
                                        <xsl:when test=".= 	910300	">	ACTIVIDADES DE JARDINES BOT�NICOS, ZOOL�GICOS Y RESERVAS NATURALES	</xsl:when>
                                        <xsl:when test=".= 	920010	">	ACTIVIDADES DE CASINOS DE JUEGOS	</xsl:when>
                                        <xsl:when test=".= 	920090	">	OTRAS ACTIVIDADES DE JUEGOS DE AZAR Y APUESTAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	931101	">	HIP�DROMOS	</xsl:when>
                                        <xsl:when test=".= 	931102	">	GESTI�N DE SALAS DE BILLAR; GESTI�N DE SALAS DE BOLOS (BOWLING)	</xsl:when>
                                        <xsl:when test=".= 	931109	">	GESTI�N DE OTRAS INSTALACIONES DEPORTIVAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	931201	">	ACTIVIDADES DE CLUBES DE F�TBOL AMATEUR Y PROFESIONAL	</xsl:when>
                                        <xsl:when test=".= 	931209	">	ACTIVIDADES DE OTROS CLUBES DEPORTIVOS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	931901	">	PROMOCI�N Y ORGANIZACI�N DE COMPETENCIAS DEPORTIVAS	</xsl:when>
                                        <xsl:when test=".= 	931909	">	OTRAS ACTIVIDADES DEPORTIVAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	932100	">	ACTIVIDADES DE PARQUES DE ATRACCIONES Y PARQUES TEM�TICOS	</xsl:when>
                                        <xsl:when test=".= 	932901	">	GESTI�N DE SALAS DE POOL; GESTI�N (EXPLOTACI�N) DE JUEGOS ELECTR�NICOS	</xsl:when>
                                        <xsl:when test=".= 	932909	">	OTRAS ACTIVIDADES DE ESPARCIMIENTO Y RECREATIVAS N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	941100	">	ACTIVIDADES DE ASOCIACIONES EMPRESARIALES Y DE EMPLEADORES	</xsl:when>
                                        <xsl:when test=".= 	941200	">	ACTIVIDADES DE ASOCIACIONES PROFESIONALES	</xsl:when>
                                        <xsl:when test=".= 	942000	">	ACTIVIDADES DE SINDICATOS	</xsl:when>
                                        <xsl:when test=".= 	949100	">	ACTIVIDADES DE ORGANIZACIONES RELIGIOSAS	</xsl:when>
                                        <xsl:when test=".= 	949200	">	ACTIVIDADES DE ORGANIZACIONES POL�TICAS	</xsl:when>
                                        <xsl:when test=".= 	949901	">	ACTIVIDADES DE CENTROS DE MADRES	</xsl:when>
                                        <xsl:when test=".= 	949902	">	ACTIVIDADES DE CLUBES SOCIALES	</xsl:when>
                                        <xsl:when test=".= 	949903	">	FUNDACIONES Y CORPORACIONES; ASOCIACIONES QUE PROMUEVEN ACTIVIDADES CULTURALES O RECREATIVAS	</xsl:when>
                                        <xsl:when test=".= 	949904	">	CONSEJO DE ADMINISTRACI�N DE EDIFICIOS Y CONDOMINIOS	</xsl:when>
                                        <xsl:when test=".= 	949909	">	ACTIVIDADES DE OTRAS ASOCIACIONES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	951100	">	REPARACI�N DE COMPUTADORES Y EQUIPO PERIF�RICO	</xsl:when>
                                        <xsl:when test=".= 	951200	">	REPARACI�N DE EQUIPO DE COMUNICACIONES (INCLUYE LA REPARACI�N TEL�FONOS CELULARES)	</xsl:when>
                                        <xsl:when test=".= 	952100	">	REPARACI�N DE APARATOS ELECTR�NICOS DE CONSUMO (INCLUYE APARATOS DE TELEVISI�N Y RADIO)	</xsl:when>
                                        <xsl:when test=".= 	952200	">	REPARACI�N DE APARATOS DE USO DOM�STICO, EQUIPO DOM�STICO Y DE JARDINER�A	</xsl:when>
                                        <xsl:when test=".= 	952300	">	REPARACI�N DE CALZADO Y DE ART�CULOS DE CUERO	</xsl:when>
                                        <xsl:when test=".= 	952400	">	REPARACI�N DE MUEBLES Y ACCESORIOS DOM�STICOS	</xsl:when>
                                        <xsl:when test=".= 	952900	">	REPARACI�N DE OTROS EFECTOS PERSONALES Y ENSERES DOM�STICOS	</xsl:when>
                                        <xsl:when test=".= 	960100	">	LAVADO Y LIMPIEZA, INCLUIDA LA LIMPIEZA EN SECO, DE PRODUCTOS TEXTILES Y DE PIEL	</xsl:when>
                                        <xsl:when test=".= 	960200	">	PELUQUER�A Y OTROS TRATAMIENTOS DE BELLEZA	</xsl:when>
                                        <xsl:when test=".= 	960310	">	SERVICIOS FUNERARIOS	</xsl:when>
                                        <xsl:when test=".= 	960320	">	SERVICIOS DE CEMENTERIOS	</xsl:when>
                                        <xsl:when test=".= 	960901	">	SERVICIOS DE ADIESTRAMIENTO, GUARDER�A, PELUQUER�A, PASEO DE MASCOTAS (EXCEPTO ACT. VETERINARIAS)	</xsl:when>
                                        <xsl:when test=".= 	960902	">	ACTIVIDADES DE SALONES DE MASAJES, BA�OS TURCOS, SAUNAS, SERVICIO DE BA�OS P�BLICOS	</xsl:when>
                                        <xsl:when test=".= 	960909	">	OTRAS ACTIVIDADES DE SERVICIOS PERSONALES N.C.P.	</xsl:when>
                                        <xsl:when test=".= 	970000	">	ACTIVIDADES DE LOS HOGARES COMO EMPLEADORES DE PERSONAL DOM�STICO	</xsl:when>
                                        <xsl:when test=".= 	990000	">	ACTIVIDADES DE ORGANIZACIONES Y �RGANOS EXTRATERRITORIALES	</xsl:when>
                                        <xsl:otherwise>
                                            ERROR EN EL CODIGO DE LA ACTIVIDAD ECONOMICA
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <br/>
                                </xsl:for-each>
                            </xsl:otherwise>
                        </xsl:choose>
                    </span>
                </div>

                <br/>

                <div class="casaMatriz">
                     <span class="spanCasaMatriz">
                        var:sucursales
                    </span>
                </div>

            </div>


            <div class="headerDerecha">

                <!-- Recuadro con folio -->
                <div class="recuadroFolio">

                    <div class="RutEmis" style="font-size:10pt;font-family:Arial,Helvetica; font-weight:bold; color:red; text-align:center;">
                        R.U.T.:
                        <xsl:call-template name="RutFormat">
                            <xsl:with-param name="rut">
                                <xsl:value-of select="RUTEmisor" />
                            </xsl:with-param>
                        </xsl:call-template>
                    </div>

                    <br/>
                    <div class="TipoDTE">
                        <xsl:choose>
                            <xsl:when test="$tipo=0">
                                VALE ELECTR�NICO
                            </xsl:when>
                            <xsl:when test="$tipo=33">
                                FACTURA ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=39">
                                BOLETA ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=41">
                                BOLETA EXENTA ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=46">
                                FACTURA DE COMPRA ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=52">
                                GU�A DE DESPACHO ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=56">
                                NOTA DE D�BITO ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=61">
                                NOTA DE CR�DITO ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=34">
                                FACTURA NO AFECTA O EXENTA ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=110">
                                FACTURA DE EXPORTACION ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=111">
                                NOTA DE D�BITO DE EXPORTACION ELECTR�NICA
                            </xsl:when>
                            <xsl:when test="$tipo=112">
                                NOTA DE CR�DITO DE EXPORTACION ELECTR�NICA
                            </xsl:when>
                            <xsl:otherwise>
                                CORREGIR EN TEMPLATE XSL
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                               <br/>
                    <div class="Folio">
                        N�
                        <xsl:value-of select="$folio" />
                    </div>
                </div>

                <div class="recuadroUnidadSII">

                    <div class="unidadSII">
                        S.I.I - var:unidad_regional
                    </div>

                </div>

            </div>

        </div>



        <div style="clear:both;"></div>

    </xsl:template>

    <!-- Datos del receptor -->
    <xsl:template match="Receptor">
        <xsl:param name="fecha" />
        <xsl:param name="medioPago"/>
        <xsl:param name="formaPago"/>
        <xsl:param name="formaPagoExp"/>

        <div id="contenedorFechaEmision">
            <div id="fechaEmision">
                Emisi�n:
                <xsl:call-template name="FechaFormat">
                    <xsl:with-param name="fecha">
                        <xsl:value-of select="$fecha" />
                    </xsl:with-param>
                </xsl:call-template>

                <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/FchVenc !=''">
                    Vencimiento:
                    <xsl:call-template name="FechaFormat">
                        <xsl:with-param name="fecha">
                            <xsl:value-of select="/DTE/*[1]/Encabezado/IdDoc/FchVenc" />
                        </xsl:with-param>
                    </xsl:call-template>
                </xsl:if>

            </div>
        </div>

        <div id="contenedorReceptor">
            <table style="width:100%;border:0.5pt solid black;" id="contenedorDReceptor">

                <tbody>
                    <tr>
                        <td style="text-align:left; width:3cm;">
                            <span style="font-weight:bold;">
                                SE&#209;OR(ES):
                            </span>
                        </td>

                        <td style="text-align:left; width:11.0cm;">
                            <span>
                                <xsl:value-of select="RznSocRecep" />
                            </span>
                        </td>

                        <td style="text-align=left; width:2.5cm;">
                            <span style="font-weight:bold">
                                R.U.T.:
                            </span>
                        </td>
                        <td style="text-align:left; width:2.5cm;">
                            <span>
                                <xsl:call-template name="RutFormat">
                                    <xsl:with-param name="rut">
                                        <xsl:value-of select="RUTRecep" />
                                    </xsl:with-param>
                                </xsl:call-template>
                            </span>
                        </td>

                    </tr>

                    <tr>
                        <td style="text-align:left; width:3cm;">
                            <span style="font-weight:bold;">
                                DIRECCION:
                            </span>
                        </td>
                        <td style="text-align:left; width:11.0cm;">
                            <xsl:value-of select="DirRecep" />
                        </td>
                        <td style="text-align:left; width:2.5cm;">
                            <span style="font-weight:bold;">
                                COMUNA:
                            </span>
                        </td>
                        <td style="text-align:left; width:2.5cm;">
                            <xsl:value-of select="CmnaRecep" />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:left; width:3cm;">
                            <span style="font-weight:bold;">
                                GIRO:
                            </span>
                        </td>
                        <td style="text-align:left; width:11.0cm;">
                            <xsl:value-of select="GiroRecep" />
                        </td>
                        <td style="text-align:left; width:2.5cm;">
                            <span style="font-weight:bold;">
                                CIUDAD:
                            </span>
                        </td>
                        <td style="text-align:left; width:2.5cm;">
                            <xsl:value-of select="CiudadRecep" />
                        </td>
                    </tr>

            <xsl:if test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad !=''">
                <tr>
                    <td style="text-align:left; width:3cm;"><span white-space-treatment="preserve">&#xa0;</span></td>
                    <td style="text-align:left; width:11.0cm;"><span white-space-treatment="preserve">&#xa0;</span></td>

                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            NACIONALIDAD:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/NacionalidadReceptor/Extranjero/Nacionalidad=  101">SENEGAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 102">GAMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 103">GUINEA-BISSAU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 104">GUINEA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 105">SIERRA LEONA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 106">LIBERIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 107">COSTA DE MARFIL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 108">GHANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 109">TOGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 111">NIGERIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 112">SUDAFRICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 113">BOTSWANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 114">LESOTHO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 115">MALAWI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 116">ZIMBABWE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 117">ZAMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 118">COMORAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 119">MAURICIO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 120">MADAGASCAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 121">MOZAMBIQUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 122">SWAZILANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 123">SUDAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 124">EGIPTO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 125">LIBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 126">TUNEZ</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 127">ARGELIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 128">MARRUECOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 129">CABO VERDE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 130">CHAD</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 131">NIGER</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 132">ALTO VOLTA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 133">MALI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 134">MAURITANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 135">TANZANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 136">UGANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 137">KENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 138">SOMALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 139">ETIOPIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 140">ANGOLA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 141">BURUNDI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 142">RWANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 143">REP.DEM. CONGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 144">CONGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 145">GABON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 146">S.TOM.PRINCIPE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 147">GUINEA ECUATRL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 148">REP.CENT.AFRIC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 149">CAMERUN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 150">BENIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 151">TERR.BRIT.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 152">TER.ESPAN.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 153">TERR.FRAN.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 154">BOPHUTHATSWANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 155">DJIBOUTI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 156">SEYCHELLES</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 158">VIENDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 159">NAMIBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 160">SUDAN DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 161">BURKINA FASO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 162">CISKEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 163">ERITREA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 164">ISLAS MARSHALL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 165">SAHARAUI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 166">TRANSKEI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 201">VENEZUELA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 202">COLOMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 203">TRINID.Y TOBAGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 204">BARBADOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 205">JAMAICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 206">REP.DOMINICANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 207">BAHAMAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 208">HAITI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 209">CUBA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 210">PANAMA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 211">COSTA RICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 212">NICARAGUA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 213">EL SALVADOR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 214">HONDURAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 215">GUATEMALA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 216">MEXICO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 217">GUYANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 218">ECUADOR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 219">PERU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 220">BRASIL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 221">BOLIVIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 222">PARAGUAY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 223">URUGUAY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 224">ARGENTINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 225">U.S.A.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 226">CANADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 227">TERR.BRIT.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 228">TERR.FRAN.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 229">TER.HOLAN.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 230">TERR.D/DINAMARC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 231">DOMINICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 232">GRANADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 233">SANTA LUCIA(ISL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 234">S.VTE.Y GRANAD.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 235">SURINAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 236">BELICE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 240">ANTIGUA Y BBUDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 241">SNT.KIT &amp; NEVIS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 242">ANGUILA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 243">ARUBA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 244">BERMUDAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 245">ISLAS VIRG.BRIT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 246">ISLAS CAYMAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 247">ANTILLAS NEERLANDESA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 248">TURCAS Y CAICOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 249">ISLAS VIRGENES (ESTADOS UNIDOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 250">MARTINICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 251">PUERTO RICO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 252">MONSERRAT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 253">GROENLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 301">JORDANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 302">ARABIA SAUDITA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 303">KUWAIT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 304">OMAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 305">CHIPRE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 306">ISRAEL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 307">IRAK</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 308">AFGANISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 309">IRAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 310">SIRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 311">LIBANO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 312">QATAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 313">BAHREIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 314">SRI LANKA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 315">CAMBODIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 316">LAOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 317">INDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 318">BHUTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 319">THAILANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 320">NEPAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 321">BANGLADESH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 322">YEMEN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 323">YEMEN DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 324">PAKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 325">VIETNAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 326">MYANMAR (EX BIR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 327">ISLAS MALDIVAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 328">INDONESIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 329">MALASIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 330">TAIWAN (FORMOSA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 331">JAPON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 332">SINGAPUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 333">COREA DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 334">COREA DEL NORTE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 335">FILIPINAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 336">CHINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 337">MONGOLIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 341">EMIR.ARAB.UNID.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 342">HONG KONG</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 343">TER.PORTUG.E/AS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 344">BRUNEI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 345">MACAO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 346">REPUBLICA DE YEMEN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 401">FIJI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 402">NAURU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 403">ISLAS TONGA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 404">SAMOA OCC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 405">NUEVA ZELANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 406">AUSTRALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 407">TERR.BRIT.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 408">TERR.FRAN.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 409">T.NORTEAM.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 412">PPUA.NVA.GUINEA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 415">VANUATU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 416">KIRIBATI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 417">MICRONESIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 418">ISLAS SALOMON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 419">TUVALU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 420">PALAU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 421">NIUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 422">POLINESIA FRANCESA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 423">NUEVA CALEDONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 424">ISLAS MARIANAS DEL NORTE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 425">GUAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 426">TIMOR ORIENTAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 427">ISLAS COOK</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 501">PORTUGAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 502">ALEMANIA R.F.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 503">ALEMANIA R.D.(N</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 504">ITALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 505">FRANCIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 506">IRLANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 507">DINAMARCA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 508">SUIZA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 509">AUSTRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 510">REINO UNIDO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 511">SUECIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 512">FINLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 513">NORUEGA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 514">BELGICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 515">HOLANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 516">ISLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 517">ESPANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 518">ALBANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 519">RUMANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 520">GRECIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 521">U.R.S.S. ��(NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 522">TURQUIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 523">MALTA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 524">SANTA SEDE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 525">ANDORRA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 526">YUGOESLAVIA (NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 527">BULGARIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 528">POLONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 529">CHECOESLOVAQUIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 530">HUNGRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 532">LUXEMBURGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 534">LIECHTENSTEIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 535">MONACO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 536">SAN MARINO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 540">ARMENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 541">AZERBAIJAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 542">BELARUS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 543">BOSNIA HEZGVINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 544">REPUBLICA CHECA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 545">REP.ESLOVACA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 546">REPUBLICA DE SERBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 547">CROACIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 548">ESLOVENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 549">ESTONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 550">GEORGIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 551">KASAJSTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 552">KIRGISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 553">LETONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 554">LITUANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 555">MACEDONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 556">MOLDOVA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 557">TADJIKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 558">TURKMENISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 559">UCRANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 560">UZBEKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 561">MONTENEGRO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 562">RUSIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 563">ALEMANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 564">RF YUGOSLAVIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 565">GIBRALTAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 566">GUERNSEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 567">ISLA DE MAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 568">JERSEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 585">GILBRALTAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 901">COMB.Y LUBRIC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 902">RANCHO DE NAVES</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 903">PESCA EXTRA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 904">ORIG.O DEST. NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 905">ZF.IQUIQUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 906">DEPOSITO FRANCO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 907">ZF.PARENAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 910">ZF.ARICA-ZF IND</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 997">CHILE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 998">NAC.REPUTADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Receptor/Extranjero/Nacionalidad= 999">OTROS(PAIS DESC</xsl:when>
                        </xsl:choose>
                    </td>
                </tr>
            </xsl:if>

            <xsl:choose>
                <xsl:when test="$medioPago != '' or $formaPago != '' or $formaPagoExp != ''">
                    <tr>
                        <td style="text-align:left; width:3cm;">
                            <span style="font-weight:bold;">
                                CONDICION VENTA:
                            </span>
                        </td>
                        <!--<td style="text-align:left; height:1cm;">-->
                        <td style="text-align:left; width:11.0cm;">
                            <xsl:call-template name="PagoFormat">
                                <xsl:with-param name="formaPagoExp">
                                    <xsl:value-of select="$formaPagoExp" />
                                </xsl:with-param>
                                <xsl:with-param name="medioPago">
                                    <xsl:value-of select="$medioPago" />
                                </xsl:with-param>
                                <xsl:with-param name="formaPago">
                                    <xsl:value-of select="$formaPago" />
                                </xsl:with-param>
                            </xsl:call-template>
                        </td>
                        <td style="text-align:left; width:2.5cm;"><span white-space-treatment="preserve">&#xa0;</span></td>
                        <td style="text-align:left; width:2.5cm;"><span white-space-treatment="preserve">&#xa0;</span></td>
                    </tr>

                </xsl:when>
            </xsl:choose>


		<xsl:if test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado !=''">
                   <tr>
                        <td style="text-align:left; width:3cm;">
                            <span style="font-weight:bold;">
                                TIPO TRASLADO
                            </span>
                        </td>
                        <!--<td style="text-align:left; height:1cm;">-->
                        <td style="text-align:left; width:11.0cm;">

                            <xsl:choose>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=1">
                                    Operaci�n constituye venta
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=2">
                                    Ventas por efectuar
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=3">
                                    Consignaciones
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=4">
                                    Entrega gratuita
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=5">
                                    Traslados internos
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=6">
                                    Otros traslados no venta
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=7">
                                    Gu�a de devoluci�n
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=8">
                                    Traslado para exportaci�n. (no venta)
                                </xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/IndTraslado=9">
                                    Venta para exportaci�n
                                </xsl:when>
                                <xsl:otherwise>
                                    CORREGIR EN TEMPLATE XSL
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDespacho !=''">
                                <br></br>
                                <xsl:choose>
                                    <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/TipoDespacho=1">
                                        Despacho por cuenta del receptor del documento (cliente o vendedor en caso de Facturas de compra.)
                                    </xsl:when>
                                    <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/TipoDespacho=2">
                                        Despacho por cuenta del emisor a instalaciones del cliente
                                    </xsl:when>
                                    <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/TipoDespacho=3">
                                       Despacho por cuenta del emisor a otras instalaciones (Ejemplo: entrega en Obra)
                                    </xsl:when>
                                    <xsl:otherwise>
                                        CORREGIR EN TEMPLATE XSL
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:if>

                        </td>
                        <td><span white-space-treatment="preserve">&#xa0;</span></td>
                        <td><span white-space-treatment="preserve">&#xa0;</span></td>
                    </tr>
		</xsl:if>
                <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE!=110 and /DTE/*[1]/Encabezado/IdDoc/TipoDTE!=111  and /DTE/*[1]/Encabezado/IdDoc/TipoDTE!=112">
                <tr>
                    <td>
                        <span style="font-weight:bold;">
                            MONTO TOTAL:
                        </span>
                    </td>
                    <td colspan="3">var:monto_letras</td>
                </tr>
                </xsl:if>

                <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE=110 or /DTE/*[1]/Encabezado/IdDoc/TipoDTE=111 or /DTE/*[1]/Encabezado/IdDoc/TipoDTE=112">
                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                            MOD. VENTA:
                        </span>
                    </td>
                    <td style="text-align:left; width:11.0cm;">
                            <xsl:choose>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodModVenta = 1">A FIRME</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodModVenta = 2">BAJO COND.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodModVenta = 3">CONS-LIBRE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodModVenta = 4">COND-M.F.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodModVenta = 9">SIN PAGO</xsl:when>
                            </xsl:choose>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            CLA�. VENTA:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 1">CIF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 2">CFR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 3">EXW</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 4">FAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 5">FOB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 6">S/CL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 9">DDP</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 10">FCA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 11">CPT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 12">CIP</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 17">DAT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodClauVenta = 18">DAP</xsl:when>
                        </xsl:choose>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                            TRANSPORTE:
                        </span>
                    </td>
                    <td style="text-align:left; width:11.0cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 1">MAR�TIMA, FLUVIAL Y LACUSTRE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 4">A�REO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 5">POSTAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 6">FERROVIARIO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 7">CARRETERO / TERRESTRE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 8">OLEODUCTOS, GASODUCTOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodViaTransp = 9">TENDIDO EL�CTRICO (A�reo, Subterr�neo)</xsl:when>
                        </xsl:choose>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            TOTAL CLA�:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Aduana/TotClauVenta" />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                           EMBARQUE:
                        </span>
                    </td>
                    <td style="text-align:left; width:11.0cm;">
                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Aduana/IdAdicPtoEmb" />
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            DESEMBARQUE:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Aduana/IdAdicPtoDesemb" />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                            U. TARA:
                        </span>
                    </td>
                    <td style="text-align:left; width:11.0cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 0">S.U.M</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 1">TMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 10">U</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 11">DOC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 12">U(JGO)</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 13">MU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 14">MT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 15">MT2</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 16">MCUB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 17">PAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 18">KNFC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 19">CARTON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 2">QMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 20">KWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 23">BAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 24">M2/1MM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 3">MKWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 4">TMN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 5">KLT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 6">KN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 7">GN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 8">HL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 9">LT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidMedTara = 99">S.U.M</xsl:when>
                        </xsl:choose>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            U. P. BRUTO:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 0">S.U.M</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 1">TMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 10">U</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 11">DOC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 12">U(JGO)</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 13">MU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 14">MT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 15">MT2</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 16">MCUB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 17">PAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 18">KNFC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 19">CARTON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 2">QMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 20">KWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 23">BAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 24">M2/1MM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 3">MKWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 4">TMN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 5">KLT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 6">KN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 7">GN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 8">HL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 9">LT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoBruto = 99">S.U.M</xsl:when>
                        </xsl:choose>
                    </td>
                </tr>

                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                            U. P. NETO:
                        </span>
                    </td>
                    <td style="text-align:left; width:11.0cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 0">S.U.M</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 1">TMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 10">U</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 11">DOC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 12">U(JGO)</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 13">MU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 14">MT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 15">MT2</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 16">MCUB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 17">PAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 18">KNFC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 19">CARTON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 2">QMB</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 20">KWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 23">BAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 24">M2/1MM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 3">MKWH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 4">TMN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 5">KLT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 6">KN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 7">GN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 8">HL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 9">LT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodUnidPesoNeto = 99">S.U.M</xsl:when>
                        </xsl:choose>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            TOTAL BULTOS:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Aduana/TotBultos" />
                    </td>
                </tr>


                <tr>
                    <td style="text-align:left; width:3cm;">
                        <span style="font-weight:bold;">
                            P. Receptor:
                        </span>
                    </td>

                    <td style="text-align:left; width:11.0cm;">
                            <xsl:choose>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep=  101">SENEGAL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 102">GAMBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 103">GUINEA-BISSAU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 104">GUINEA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 105">SIERRA LEONA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 106">LIBERIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 107">COSTA DE MARFIL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 108">GHANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 109">TOGO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 111">NIGERIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 112">SUDAFRICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 113">BOTSWANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 114">LESOTHO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 115">MALAWI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 116">ZIMBABWE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 117">ZAMBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 118">COMORAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 119">MAURICIO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 120">MADAGASCAR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 121">MOZAMBIQUE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 122">SWAZILANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 123">SUDAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 124">EGIPTO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 125">LIBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 126">TUNEZ</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 127">ARGELIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 128">MARRUECOS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 129">CABO VERDE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 130">CHAD</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 131">NIGER</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 132">ALTO VOLTA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 133">MALI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 134">MAURITANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 135">TANZANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 136">UGANDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 137">KENIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 138">SOMALIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 139">ETIOPIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 140">ANGOLA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 141">BURUNDI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 142">RWANDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 143">REP.DEM. CONGO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 144">CONGO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 145">GABON</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 146">S.TOM.PRINCIPE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 147">GUINEA ECUATRL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 148">REP.CENT.AFRIC.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 149">CAMERUN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 150">BENIN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 151">TERR.BRIT.EN AF</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 152">TER.ESPAN.EN AF</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 153">TERR.FRAN.EN AF</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 154">BOPHUTHATSWANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 155">DJIBOUTI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 156">SEYCHELLES</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 158">VIENDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 159">NAMIBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 160">SUDAN DEL SUR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 161">BURKINA FASO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 162">CISKEY</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 163">ERITREA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 164">ISLAS MARSHALL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 165">SAHARAUI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 166">TRANSKEI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 201">VENEZUELA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 202">COLOMBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 203">TRINID.Y TOBAGO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 204">BARBADOS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 205">JAMAICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 206">REP.DOMINICANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 207">BAHAMAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 208">HAITI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 209">CUBA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 210">PANAMA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 211">COSTA RICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 212">NICARAGUA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 213">EL SALVADOR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 214">HONDURAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 215">GUATEMALA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 216">MEXICO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 217">GUYANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 218">ECUADOR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 219">PERU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 220">BRASIL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 221">BOLIVIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 222">PARAGUAY</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 223">URUGUAY</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 224">ARGENTINA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 225">U.S.A.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 226">CANADA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 227">TERR.BRIT.EN AM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 228">TERR.FRAN.EN AM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 229">TER.HOLAN.EN AM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 230">TERR.D/DINAMARC</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 231">DOMINICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 232">GRANADA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 233">SANTA LUCIA(ISL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 234">S.VTE.Y GRANAD.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 235">SURINAM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 236">BELICE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 240">ANTIGUA Y BBUDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 241">SNT.KIT &amp; NEVIS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 242">ANGUILA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 243">ARUBA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 244">BERMUDAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 245">ISLAS VIRG.BRIT</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 246">ISLAS CAYMAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 247">ANTILLAS NEERLANDESA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 248">TURCAS Y CAICOS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 249">ISLAS VIRGENES (ESTADOS UNIDOS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 250">MARTINICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 251">PUERTO RICO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 252">MONSERRAT</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 253">GROENLANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 301">JORDANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 302">ARABIA SAUDITA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 303">KUWAIT</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 304">OMAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 305">CHIPRE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 306">ISRAEL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 307">IRAK</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 308">AFGANISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 309">IRAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 310">SIRIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 311">LIBANO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 312">QATAR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 313">BAHREIN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 314">SRI LANKA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 315">CAMBODIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 316">LAOS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 317">INDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 318">BHUTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 319">THAILANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 320">NEPAL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 321">BANGLADESH</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 322">YEMEN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 323">YEMEN DEL SUR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 324">PAKISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 325">VIETNAM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 326">MYANMAR (EX BIR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 327">ISLAS MALDIVAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 328">INDONESIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 329">MALASIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 330">TAIWAN (FORMOSA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 331">JAPON</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 332">SINGAPUR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 333">COREA DEL SUR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 334">COREA DEL NORTE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 335">FILIPINAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 336">CHINA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 337">MONGOLIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 341">EMIR.ARAB.UNID.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 342">HONG KONG</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 343">TER.PORTUG.E/AS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 344">BRUNEI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 345">MACAO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 346">REPUBLICA DE YEMEN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 401">FIJI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 402">NAURU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 403">ISLAS TONGA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 404">SAMOA OCC.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 405">NUEVA ZELANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 406">AUSTRALIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 407">TERR.BRIT.EN AU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 408">TERR.FRAN.EN AU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 409">T.NORTEAM.EN AU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 412">PPUA.NVA.GUINEA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 415">VANUATU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 416">KIRIBATI</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 417">MICRONESIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 418">ISLAS SALOMON</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 419">TUVALU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 420">PALAU</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 421">NIUE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 422">POLINESIA FRANCESA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 423">NUEVA CALEDONIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 424">ISLAS MARIANAS DEL NORTE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 425">GUAM</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 426">TIMOR ORIENTAL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 427">ISLAS COOK</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 501">PORTUGAL</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 502">ALEMANIA R.F.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 503">ALEMANIA R.D.(N</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 504">ITALIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 505">FRANCIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 506">IRLANDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 507">DINAMARCA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 508">SUIZA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 509">AUSTRIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 510">REINO UNIDO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 511">SUECIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 512">FINLANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 513">NORUEGA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 514">BELGICA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 515">HOLANDA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 516">ISLANDIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 517">ESPANA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 518">ALBANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 519">RUMANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 520">GRECIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 521">U.R.S.S. ��(NO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 522">TURQUIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 523">MALTA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 524">SANTA SEDE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 525">ANDORRA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 526">YUGOESLAVIA (NO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 527">BULGARIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 528">POLONIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 529">CHECOESLOVAQUIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 530">HUNGRIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 532">LUXEMBURGO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 534">LIECHTENSTEIN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 535">MONACO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 536">SAN MARINO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 540">ARMENIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 541">AZERBAIJAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 542">BELARUS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 543">BOSNIA HEZGVINA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 544">REPUBLICA CHECA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 545">REP.ESLOVACA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 546">REPUBLICA DE SERBIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 547">CROACIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 548">ESLOVENIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 549">ESTONIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 550">GEORGIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 551">KASAJSTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 552">KIRGISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 553">LETONIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 554">LITUANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 555">MACEDONIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 556">MOLDOVA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 557">TADJIKISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 558">TURKMENISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 559">UCRANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 560">UZBEKISTAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 561">MONTENEGRO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 562">RUSIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 563">ALEMANIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 564">RF YUGOSLAVIA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 565">GIBRALTAR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 566">GUERNSEY</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 567">ISLA DE MAN</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 568">JERSEY</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 585">GILBRALTAR</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 901">COMB.Y LUBRIC.</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 902">RANCHO DE NAVES</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 903">PESCA EXTRA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 904">ORIG.O DEST. NO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 905">ZF.IQUIQUE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 906">DEPOSITO FRANCO</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 907">ZF.PARENAS</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 910">ZF.ARICA-ZF IND</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 997">CHILE</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 998">NAC.REPUTADA</xsl:when>
                                <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisRecep= 999">OTROS(PAIS DESC</xsl:when>
                            </xsl:choose>
                    </td>

                    <td style="text-align:left; width:2.5cm;">
                        <span style="font-weight:bold;">
                            P. Destino:
                        </span>
                    </td>
                    <td style="text-align:left; width:2.5cm;">
                        <xsl:choose>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestinDestin=  101">SENEGAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 102">GAMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 103">GUINEA-BISSAU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 104">GUINEA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 105">SIERRA LEONA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 106">LIBERIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 107">COSTA DE MARFIL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 108">GHANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 109">TOGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 111">NIGERIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 112">SUDAFRICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 113">BOTSWANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 114">LESOTHO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 115">MALAWI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 116">ZIMBABWE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 117">ZAMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 118">COMORAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 119">MAURICIO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 120">MADAGASCAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 121">MOZAMBIQUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 122">SWAZILANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 123">SUDAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 124">EGIPTO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 125">LIBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 126">TUNEZ</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 127">ARGELIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 128">MARRUECOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 129">CABO VERDE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 130">CHAD</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 131">NIGER</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 132">ALTO VOLTA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 133">MALI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 134">MAURITANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 135">TANZANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 136">UGANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 137">KENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 138">SOMALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 139">ETIOPIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 140">ANGOLA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 141">BURUNDI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 142">RWANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 143">REP.DEM. CONGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 144">CONGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 145">GABON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 146">S.TOM.PRINCIPE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 147">GUINEA ECUATRL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 148">REP.CENT.AFRIC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 149">CAMERUN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 150">BENIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 151">TERR.BRIT.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 152">TER.ESPAN.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 153">TERR.FRAN.EN AF</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 154">BOPHUTHATSWANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 155">DJIBOUTI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 156">SEYCHELLES</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 158">VIENDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 159">NAMIBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 160">SUDAN DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 161">BURKINA FASO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 162">CISKEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 163">ERITREA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 164">ISLAS MARSHALL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 165">SAHARAUI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 166">TRANSKEI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 201">VENEZUELA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 202">COLOMBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 203">TRINID.Y TOBAGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 204">BARBADOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 205">JAMAICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 206">REP.DOMINICANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 207">BAHAMAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 208">HAITI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 209">CUBA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 210">PANAMA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 211">COSTA RICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 212">NICARAGUA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 213">EL SALVADOR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 214">HONDURAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 215">GUATEMALA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 216">MEXICO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 217">GUYANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 218">ECUADOR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 219">PERU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 220">BRASIL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 221">BOLIVIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 222">PARAGUAY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 223">URUGUAY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 224">ARGENTINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 225">U.S.A.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 226">CANADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 227">TERR.BRIT.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 228">TERR.FRAN.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 229">TER.HOLAN.EN AM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 230">TERR.D/DINAMARC</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 231">DOMINICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 232">GRANADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 233">SANTA LUCIA(ISL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 234">S.VTE.Y GRANAD.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 235">SURINAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 236">BELICE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 240">ANTIGUA Y BBUDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 241">SNT.KIT &amp; NEVIS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 242">ANGUILA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 243">ARUBA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 244">BERMUDAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 245">ISLAS VIRG.BRIT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 246">ISLAS CAYMAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 247">ANTILLAS NEERLANDESA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 248">TURCAS Y CAICOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 249">ISLAS VIRGENES (ESTADOS UNIDOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 250">MARTINICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 251">PUERTO RICO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 252">MONSERRAT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 253">GROENLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 301">JORDANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 302">ARABIA SAUDITA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 303">KUWAIT</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 304">OMAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 305">CHIPRE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 306">ISRAEL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 307">IRAK</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 308">AFGANISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 309">IRAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 310">SIRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 311">LIBANO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 312">QATAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 313">BAHREIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 314">SRI LANKA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 315">CAMBODIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 316">LAOS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 317">INDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 318">BHUTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 319">THAILANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 320">NEPAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 321">BANGLADESH</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 322">YEMEN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 323">YEMEN DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 324">PAKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 325">VIETNAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 326">MYANMAR (EX BIR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 327">ISLAS MALDIVAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 328">INDONESIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 329">MALASIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 330">TAIWAN (FORMOSA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 331">JAPON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 332">SINGAPUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 333">COREA DEL SUR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 334">COREA DEL NORTE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 335">FILIPINAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 336">CHINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 337">MONGOLIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 341">EMIR.ARAB.UNID.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 342">HONG KONG</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 343">TER.PORTUG.E/AS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 344">BRUNEI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 345">MACAO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 346">REPUBLICA DE YEMEN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 401">FIJI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 402">NAURU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 403">ISLAS TONGA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 404">SAMOA OCC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 405">NUEVA ZELANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 406">AUSTRALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 407">TERR.BRIT.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 408">TERR.FRAN.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 409">T.NORTEAM.EN AU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 412">PPUA.NVA.GUINEA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 415">VANUATU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 416">KIRIBATI</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 417">MICRONESIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 418">ISLAS SALOMON</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 419">TUVALU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 420">PALAU</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 421">NIUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 422">POLINESIA FRANCESA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 423">NUEVA CALEDONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 424">ISLAS MARIANAS DEL NORTE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 425">GUAM</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 426">TIMOR ORIENTAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 427">ISLAS COOK</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 501">PORTUGAL</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 502">ALEMANIA R.F.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 503">ALEMANIA R.D.(N</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 504">ITALIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 505">FRANCIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 506">IRLANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 507">DINAMARCA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 508">SUIZA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 509">AUSTRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 510">REINO UNIDO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 511">SUECIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 512">FINLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 513">NORUEGA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 514">BELGICA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 515">HOLANDA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 516">ISLANDIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 517">ESPANA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 518">ALBANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 519">RUMANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 520">GRECIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 521">U.R.S.S. ��(NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 522">TURQUIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 523">MALTA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 524">SANTA SEDE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 525">ANDORRA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 526">YUGOESLAVIA (NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 527">BULGARIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 528">POLONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 529">CHECOESLOVAQUIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 530">HUNGRIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 532">LUXEMBURGO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 534">LIECHTENSTEIN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 535">MONACO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 536">SAN MARINO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 540">ARMENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 541">AZERBAIJAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 542">BELARUS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 543">BOSNIA HEZGVINA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 544">REPUBLICA CHECA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 545">REP.ESLOVACA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 546">REPUBLICA DE SERBIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 547">CROACIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 548">ESLOVENIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 549">ESTONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 550">GEORGIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 551">KASAJSTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 552">KIRGISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 553">LETONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 554">LITUANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 555">MACEDONIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 556">MOLDOVA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 557">TADJIKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 558">TURKMENISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 559">UCRANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 560">UZBEKISTAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 561">MONTENEGRO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 562">RUSIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 563">ALEMANIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 564">RF YUGOSLAVIA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 565">GIBRALTAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 566">GUERNSEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 567">ISLA DE MAN</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 568">JERSEY</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 585">GILBRALTAR</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 901">COMB.Y LUBRIC.</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 902">RANCHO DE NAVES</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 903">PESCA EXTRA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 904">ORIG.O DEST. NO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 905">ZF.IQUIQUE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 906">DEPOSITO FRANCO</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 907">ZF.PARENAS</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 910">ZF.ARICA-ZF IND</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 997">CHILE</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 998">NAC.REPUTADA</xsl:when>
                            <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Aduana/CodPaisDestin= 999">OTROS(PAIS DESC</xsl:when>
                        </xsl:choose>
                    </td>
                </tr>
                </xsl:if>

                <xsl:choose>
                    <xsl:when test="/DTE/*[1]/Encabezado/Transporte/Chofer/RUTChofer != 'NaN'">

                <tr>
                    <td>
                        <span style="font-weight:bold;">
                            CHOFER:
                        </span>
                    </td>
                    <td><xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Chofer/NombreChofer" />
                    (RUT
                            <span>
                                <xsl:call-template name="RutFormat">
                                    <xsl:with-param name="rut">
                                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Chofer/RUTChofer" />
                                    </xsl:with-param>
                                </xsl:call-template>
                            </span>)
                    </td>
                    <td>
                        <span style="font-weight:bold;">
                            PATENTE:
                        </span>
                    </td>

                    <td>
                        <xsl:value-of select="/DTE/*[1]/Encabezado/Transporte/Patente" />
                    </td>
                </tr>

                    </xsl:when>
                </xsl:choose>
                <tr>
                    <td>
                        <span style="font-weight:bold;">
                            OBSERVACIONES:
                        </span>
                    </td>
                    <td colspan="3">var:observaciones_pdf</td>
                </tr>

                </tbody>
            </table>

        </div>
    </xsl:template>

    <!-- Timbre electr�nico -->
    <xsl:template name="TED">
        <div>
            <!-- 4CM ORIGINAL-->
            <img style="height:4cm;" src="var:barcode"/>
        </div>
        <div style="clear:both;"></div>
    </xsl:template>

    <xsl:template name="Totales">
         <xsl:param name="montos_brutos">
            <xsl:value-of select="/DTE/*[1]/Encabezado/IdDoc/MntBruto"/>
        </xsl:param>
        <xsl:param name="montoTotal">
             <xsl:value-of select="/DTE/*[1]/Encabezado/Totales/MntTotal"/>
        </xsl:param>
        <xsl:param name="IVA">
             <xsl:value-of select="/DTE/*[1]/Encabezado/Totales/IVA"/>
        </xsl:param>
        <xsl:param name="netofinal">
             <xsl:value-of select="/DTE/*[1]/Encabezado/Totales/MntNeto"/>
        </xsl:param>
        <xsl:param name="exento">
             <xsl:value-of select="/DTE/*[1]/Encabezado/Totales/MntExe"/>
        </xsl:param>

        <div style="width:5cm;float:right;padding-right:1cm;">
            <table id="totales" style="font-size:7pt; font-family:Arial,Helvetica;color:black; text-align:right;float:right;">
                <tr>
                    <td colspan="2" style="border:0.5pt solid black;"><span style="font-weight:bold;">Totales</span></td>
                </tr>

                <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE=110 or /DTE/*[1]/Encabezado/IdDoc/TipoDTE=111 or /DTE/*[1]/Encabezado/IdDoc/TipoDTE=112">
                <tr style="border-bottom:0.5pt solid black;">
                    <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                        <span style="font-weight:bold;">
                            MONEDA
                        </span>
                    </td>

                    <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                        <span style="font-weight:bold;">
                            <xsl:value-of select='/DTE/*[1]/Encabezado/Totales/TpoMoneda'/>
                        </span>
                    </td>
                </tr>
                </xsl:if>

                <xsl:if test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE!=110 and /DTE/*[1]/Encabezado/IdDoc/TipoDTE!=111  and /DTE/*[1]/Encabezado/IdDoc/TipoDTE!=112">
                <xsl:for-each select="/DTE/*[1]/DscRcgGlobal">
                    <xsl:if test="$montos_brutos !='NaN' and $montos_brutos = 1">
                        <xsl:if test="TpoValor='%'">
                            <tr style="border-bottom:0.5pt solid black;">
                                <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        Desc. Bruto( <xsl:value-of select='ValorDR'/>%)
                                    </span>
                                </td>

                                <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                    <span style="font-weight:bold;">
                                        <xsl:value-of select='format-number((($netofinal * 100) div (100-ValorDR)) - $netofinal, "#.###", "chilean")'/>
                                    </span>
                                </td>
                            </tr>
                        </xsl:if>

                        <xsl:if test="TpoValor='$'">
                            <tr style="border-bottom:0.5pt solid black;">
                                <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                    <span style="font-weight:bold;">
                                        Desc. Bruto
                                    </span>
                                </td>
                                <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                    <span style="font-weight:bold;">
                                        <xsl:value-of select='format-number(ValorDR, "#.###", "chilean")'/>
                                    </span>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:if>

                    <xsl:if test="$montos_brutos = 'NaN' or $montos_brutos = 0 or $montos_brutos = ''">

                        <xsl:choose>
                            <xsl:when test="TpoMov='D'">
                                <xsl:if test="TpoValor='%'">
                                    <tr style="border-bottom:0.5pt solid black;">
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                            <span style="font-weight:bold;">
                                                Desc. neto( <xsl:value-of select='ValorDR'/>%)
                                            </span>
                                        </td>

                                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                            <span style="font-weight:bold;">
                                                <xsl:value-of select='format-number((($netofinal * 100) div (100-ValorDR)) - $netofinal, "#.###", "chilean")'/>
                                            </span>
                                        </td>
                                    </tr>
                                </xsl:if>

                                <xsl:if test="TpoValor='$'">
                                    <tr style="border-bottom:0.5pt solid black;">
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                            <span style="font-weight:bold;">
                                                Desc. neto
                                            </span>
                                        </td>
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                            <span style="font-weight:bold;">
                                                <xsl:value-of select='format-number(ValorDR, "#.###", "chilean")'/>
                                            </span>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:when>
                            <xsl:when test="TpoMov='R'">
                                <xsl:if test="TpoValor='%'">
                                    <tr style="border-bottom:0.5pt solid black;">
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                            <span style="font-weight:bold;">
                                                Rcg. neto( <xsl:value-of select='ValorDR'/>%)
                                            </span>
                                        </td>

                                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                            <span style="font-weight:bold;">
                                                <xsl:value-of select='format-number((($netofinal * 100) div (100-ValorDR)) - $netofinal, "#.###", "chilean")'/>
                                            </span>
                                        </td>
                                    </tr>
                                </xsl:if>

                                <xsl:if test="TpoValor='$'">
                                    <tr style="border-bottom:0.5pt solid black;">
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                            <span style="font-weight:bold;">
                                                Rcg. neto
                                            </span>
                                        </td>
                                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                            <span style="font-weight:bold;">
                                                <xsl:value-of select='format-number(ValorDR, "#.###", "chilean")'/>
                                            </span>
                                        </td>
                                    </tr>
                                </xsl:if>
                            </xsl:when>
                            <xsl:otherwise>
                                CORREGIR EN TEMPLATE XSL
                            </xsl:otherwise>
                        </xsl:choose>

                    </xsl:if>

                </xsl:for-each>
                </xsl:if>

                <xsl:if test="sum(/DTE/*[1]/Detalle/DescuentoMonto) != 0">
                        <tr style="border-bottom:0.5pt solid black;">
                            <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Descuento
                                </span>
                            </td>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                <span style="font-weight:bold;">
                                    <xsl:value-of select='format-number(sum(/DTE/*[1]/Detalle/DescuentoMonto), "#.###,##", "chilean")'/>
                               </span>

                            </td>
                        </tr>
                </xsl:if>

                <xsl:if test="sum(/DTE/*[1]/Detalle/RecargoMonto) != 0">
                    <tr style="border-bottom:0.5pt solid black;">
                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                            <span style="font-weight:bold;">
                                Recargo
                            </span>
                        </td>
                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                            <span style="font-weight:bold;">
                                <xsl:value-of select='format-number(sum(/DTE/*[1]/Detalle/RecargoMonto), "#.###,##", "chilean")'/>
                            </span>

                        </td>
                    </tr>
                </xsl:if>

                <xsl:choose>
                    <xsl:when test="($netofinal!=0) and $netofinal != 'NaN' and $netofinal !=''">
                        <tr style="border-bottom:0.5pt solid black;">
                            <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Neto
                                </span>
                            </td>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                <span style="font-weight:bold;">
                                    <xsl:value-of select='format-number($netofinal, "#.###,##", "chilean")'/>
                               </span>

                            </td>
                        </tr>
                    </xsl:when>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="($IVA!=0) and $IVA != 'NaN' and $IVA !=''">
                        <tr>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    IVA <xsl:value-of select="DTE/*[1]/Encabezado/Totales/TasaIVA"/>%
                                </span>
                            </td>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                <span style="font-weight:bold;">
                                    <xsl:value-of select='format-number($IVA, "#.###,##", "chilean")'/>
                                </span>
                            </td>
                        </tr>
                    </xsl:when>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="($exento!=0) and $exento != 'NaN' and $exento !=''">
                        <tr>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                                <span style="font-weight:bold;">
                                    Exento
                                </span>
                            </td>
                            <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                                <span style="font-weight:bold;">
                                    <xsl:value-of select='format-number($exento, "#.###,##", "chilean")'/>
                                </span>
                            </td>
                        </tr>
                    </xsl:when>
                </xsl:choose>

                <xsl:if test="sum(/DTE/*[1]/Encabezado/Totales/ImptoReten/MontoImp) != 0">
                    <tr>
                        <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                            <xsl:choose>
                                <xsl:when test="/DTE/*[1]/Encabezado/IdDoc/TipoDTE=46 or (/DTE/*[1]/Encabezado/Totales/ImptoReten[1]/TipoImp != 'NaN' and /DTE/*[1]/Encabezado/Totales/ImptoReten[1]/TipoImp =15)">
                                    <span style="font-weight:bold;">IVA Retenido(19%)</span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span style="font-weight:bold;">Adicional</span>
                                </xsl:otherwise>
                            </xsl:choose>

                        </td>

                        <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                            <span style="font-weight:bold;">
                                <xsl:value-of select='format-number(sum(/DTE/*[1]/Encabezado/Totales/ImptoReten/MontoImp), "#.###,##", "chilean")' />
                            </span>
                        </td>
                    </tr>
                </xsl:if>

                <tr>
                    <td style="border-right:0.5pt solid black;border-bottom:0.5 solid black;border-left:0.5pt solid black;">
                        <span style="font-weight:bold;">
                            Total
	                    </span>
                    </td>
                    <td style="border-right:0.5pt solid black;border-bottom:0.5pt solid black;text-align:right;">
                        <span style="font-weight:bold;">
                            <xsl:value-of select='format-number($montoTotal, "#.###,##", "chilean")'/>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>

    <xsl:template name="PagoFormat">
        <xsl:param name="medioPago" />
        <xsl:param name="formaPago" />
        <xsl:param name="formaPagoExp" />

        <xsl:choose>
            <xsl:when test="$formaPagoExp='01'">Cobranza hasta 1 a�o - COB1</xsl:when>
            <xsl:when test="$formaPagoExp='02'">Cobranza m�s de 1 a�o - COBRANZA</xsl:when>
            <xsl:when test="$formaPagoExp='11'">Acreditivo hasta 1 a�o - ACRED</xsl:when>
            <xsl:when test="$formaPagoExp='12'">Cr�dito de bancos y Org. financieros m�s de 1 a�o - CBOF</xsl:when>
            <xsl:when test="$formaPagoExp='21'">Sin pago - S/PAGO</xsl:when>
            <xsl:when test="$formaPagoExp='32'">Pago anticipado a la fecha de embarque - ANTICIPO</xsl:when>
        </xsl:choose>

        <xsl:choose>
            <xsl:when test="$medioPago='CH'">Cheque</xsl:when>
            <xsl:when test="$medioPago='LT'">Letra</xsl:when>
            <xsl:when test="$medioPago='EF'">Efectivo</xsl:when>
            <xsl:when test="$medioPago='PE'">Pago a Cta. Corriente</xsl:when>
            <xsl:when test="$medioPago='TC'">Tarjeta de Cr�dito</xsl:when>
            <xsl:when test="$medioPago='CF'">Cheque a Fecha</xsl:when>
            <xsl:when test="$medioPago='OT'">Otro</xsl:when>
        </xsl:choose>

        <xsl:choose>
            <xsl:when test="$formaPago=1"> (Contado)</xsl:when>
            <xsl:when test="$formaPago=2"> (Cr�dito)</xsl:when>
            <xsl:when test="$formaPago=3"> (Sin Valor)</xsl:when>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="FechaFormat">
        <xsl:param name="fecha" />

        <xsl:value-of select="substring($fecha,string-length($fecha)-1,2)" />
        de
        <xsl:choose>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=01">
                Enero
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=02">
                Febrero
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=03">
                Marzo
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=04">
                Abril
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=05">
                Mayo
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=06">
                Junio
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=07">
                Julio
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=08">
                Agosto
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=09">
                Septiembre
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=10">
                Octubre
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=11">
                Noviembre
            </xsl:when>
            <xsl:when
                test="substring($fecha,string-length($fecha)-4,2)=12">
                Diciembre
            </xsl:when>
        </xsl:choose>
        de
        <xsl:value-of
            select="substring($fecha,string-length($fecha)-9,4)" />
    </xsl:template>

    <xsl:template name="RutFormat">
        <xsl:param name="rut" />
        <xsl:variable name="num" select="substring-before($rut,'-')" />
        <xsl:variable name="dv" select="substring-after($rut,'-')" />
        <xsl:value-of select="substring($num,string-length($num)-8,3)" />.<xsl:value-of select="substring($num,string-length($num)-5,3)" />.<xsl:value-of select="substring($num,string-length($num)-2,3)" />-<xsl:value-of select="$dv" />
    </xsl:template>

    <xsl:template name="DetalleVacio">
        <tr>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
            <td class="itemsVacio">
                <span white-space-treatment="preserve">&#xa0;</span>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
