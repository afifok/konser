@echo off
title [KonserKuy] Cache Cleaner
cls

echo ============================================================
echo        ⚡ KONSERKUY LARAVEL APPLICATION CACHE CLEANER ⚡     
echo ============================================================
echo    This script will clear all cached views, routes, configs,
echo    and optimizer files to refresh the application.
echo ============================================================
echo.

if not exist "artisan" (
    echo [ERROR] File 'artisan' not found!
    echo Please run this batch script from the root directory of your Laravel project.
    echo.
    pause
    exit /b 1
)

echo [1/5] Clearing compiled views...
cmd /c "php artisan view:clear"
echo.

echo [2/5] Clearing route cache...
cmd /c "php artisan route:clear"
echo.

echo [3/5] Clearing configuration cache...
cmd /c "php artisan config:clear"
echo.

echo [4/5] Clearing application cache...
cmd /c "php artisan cache:clear"
echo.

echo [5/5] Resetting optimizer cache...
cmd /c "php artisan optimize:clear"
echo.

echo ============================================================
echo ✨ LARAVEL CACHES CLEARED SUCCESSFULLY! ✨
echo ============================================================
echo.
pause