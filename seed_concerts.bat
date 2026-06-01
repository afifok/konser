@echo off
title [KonserKuy] Database Seeder
cls

echo ============================================================
echo    __  __                                                   
echo   ^|  ^|/  ^|.-----.-----.-----.-----.----.                    
echo   ^|     ^< ^|  _  ^|     ^|__ --^|  -__^|   _^|                    
echo   ^|__^|\__^|^|_____^|__^|__^|_____^|_____^|__^|                    
echo                                                             
echo        🎫 ONLINE CONCERT TICKETING DATABASE SEEDER 🎫       
echo ============================================================
echo    Status: Ready to initialize sample database data.
echo ============================================================
echo.

REM Check if artisan file exists
if not exist "artisan" (
    echo [ERROR] File 'artisan' not found!
    echo Please run this batch script from the root directory of your Laravel project.
    echo.
    pause
    exit /b 1
)

echo [1/5] Cleaning application caches...
echo ------------------------------------------------------------
cmd /c "php artisan cache:clear"
cmd /c "php artisan config:clear"
echo [SUCCESS] Cache cleared successfully.
echo.

echo [2/5] Initializing asset and image directories...
echo ------------------------------------------------------------
cmd /c "php artisan db:seed --class=ImageDirectoriesSeeder"
echo [SUCCESS] Image directories set up.
echo.

echo [3/5] Seeding concert categories...
echo ------------------------------------------------------------
cmd /c "php artisan db:seed --class=CategorySeeder"
echo [SUCCESS] Categories seeded successfully.
echo.

echo [4/5] Seeding concert events...
echo ------------------------------------------------------------
cmd /c "php artisan db:seed --class=EventSeeder"
echo [SUCCESS] Concert events seeded successfully.
echo.

echo [5/5] Seeding ticket classes and pricing...
echo ------------------------------------------------------------
cmd /c "php artisan db:seed --class=TicketSeeder"
echo [SUCCESS] Tickets seeded successfully.
echo.

echo ============================================================
echo 🎉 DATABASE INITIALIZATION COMPLETED SUCCESSFULLY! 🎉
echo ============================================================
echo   You can now browse and buy tickets on your website.
echo   To preview concert details via command line, run:
echo   php artisan konser:view
echo ============================================================
echo.

pause