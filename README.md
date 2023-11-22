# laravel-dte-api


# Configuración del Sistema
## .env  
## Correos Electrónicos
DTE_CRON_MAIL: Correo para notificaciones del cron del sistema: certificaciondte@dsmpagos.com  
DTE_MAIL_RECEPTION_USERNAME: Usuario del correo para la recepción de mensajes: mail@example.cl  
DTE_MAIL_RECEPTION_PASSWORD: Contraseña del correo para la recepción de mensajes.  
DTE_MAIL_RECEPTION_HOST: Servidor de correo entrante: example.com  
DTE_MAIL_RECEPTION_PORT: Puerto para la conexión al servidor de correo entrante: 993  
DTE_CERTIFICATION_EMAIL: Correo al que se enviarán los archivos de certificación de boletas.  
## Ambientes y Servidores
DTE_ENVIRONMENT: Ambiente de ejecución del sistema: opciones disponibles son "maullin" o "palena" (certificación o producción).  
DTE_SERVER_PROVIDER: Proveedor de servidor utilizado: "local" para servidor normal o "vapor" para ambiente serverless (depende de las direcciones utilizadas).  
## Almacenamiento
FILESYSTEM_CLOUD: Tipo de almacenamiento en la nube: opciones "minio" o "s3". Se recomienda usar "s3" por su costo y eficiencia.  
FILESYSTEM_DRIVER: Control interno para ciertas operaciones temporales.  
## Parámetros Específicos
DTE_MAX_QUANTITY_PACKING: Cantidad máxima de boletas por lote para el envío al SII (Servicio de Impuestos Internos). Recomiendo no modificar este número (actualmente está en 150), ya que un número mayor podría saturar el sistema y el SII.  
DTE_AMOUN_VALIDATOR: Habilita o deshabilita la capa de validación para montos en los documentos enviados. Ajusta automáticamente pequeñas diferencias (±$1) en los valores. Puede ser "true" o "false".  
## Detalles Adicionales
El sistema puede crear la información de una empresa solo con el certificado del representante, extrayendo datos como la dirección desde el SII.  
El correo configurado en DTE_CERTIFICATION_EMAIL recibirá los archivos de certificación de boletas generados por el sistema.  
El correo DTE_CRON_MAIL se utiliza para recibir alertas del sistema, como notificaciones sobre la falta de certificados en una empresa u otros eventos importantes.  
