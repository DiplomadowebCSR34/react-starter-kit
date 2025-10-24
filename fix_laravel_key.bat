@echo off
REM Script para generar APP_KEY y limpiar caché en Laravel

echo ✅ Verificando archivo .env...
IF NOT EXIST ".env" (
    echo 🔄 Copiando .env.example a .env...
    copy .env.example .env
) ELSE (
    echo ✅ Archivo .env ya existe.
)

echo 🔐 Generando APP_KEY...
php artisan key:generate

echo 🧹 Limpiando caché de configuración...
php artisan config:clear
php artisan cache:clear

echo 🚀 Iniciando servidor Laravel...
php artisan serve

pause
