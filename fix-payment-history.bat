@echo off
title [KonserKuy] Payment History Fixer
cls

echo ============================================================
echo        🛠️  KONSERKUY PAYMENT HISTORY SYSTEM FIXER 🛠️       
echo ============================================================
echo    This script resolves common ticket history and payment 
echo    record display issues by flushing all system cache layers.
echo ============================================================
echo.

if not exist "artisan" (
    echo [ERROR] File 'artisan' not found!
    echo Please run this batch script from the root of your Laravel project.
    echo.
    pause
    exit /b 1
)

echo [Step 1] Clearing View Cache...
cmd /c "php artisan view:clear"
echo.

echo [Step 2] Clearing Route Cache...
cmd /c "php artisan route:clear"
echo.

echo [Step 3] Clearing Configuration Cache...
cmd /c "php artisan config:clear"
echo.

echo [Step 4] Clearing Core Application Cache...
cmd /c "php artisan cache:clear"
echo.

echo [Step 5] Re-optimizing Application Cache...
cmd /c "php artisan optimize:clear"
echo.

echo ============================================================
echo 🎉 PAYMENT HISTORY & TICKET SYSTEM FIX COMPLETED! 🎉
echo ============================================================
echo   The following should now display correctly:
echo   - Purchase/ticket history in user profile
echo   - Manual payment confirmations list
echo   - Ticket status transitions
echo ============================================================
echo.
pause