# Script para iniciar el entorno de desarrollo local con recarga automática
# Este script levanta un servidor HTTP y abre el archivo HTML principal en el navegador.

Write-Host "Iniciando servidor local de desarrollo..." -ForegroundColor Cyan
try {
    # npx live-server levantará el servidor en el puerto 8080 y abrirá el archivo
    npx -y live-server --open="REDSOCIAL V1.6.HTML"
} catch {
    Write-Host "No se pudo iniciar el servidor. Asegúrate de tener Node.js instalado." -ForegroundColor Red
    Pause
}
