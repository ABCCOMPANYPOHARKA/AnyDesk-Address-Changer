@echo off
:loop
set /a num=(%Random% %%9)+1
color %num%

echo  ██████╗  ██████╗ ██████╗ ███████╗ █████╗ ████████╗██╗  ██╗███████╗██████╗ 
echo  ██╔════╝ ██╔═══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗ 
echo  ██║  ███╗██║   ██║██║  ██║█████╗  ███████║   ██║   ███████║█████╗  ██████╔╝ 
echo  ██║   ██║██║   ██║██║  ██║██╔══╝  ██╔══██║   ██║   ██╔══██║██╔══╝  ██╔══██╗ 
echo  ╚██████╔╝╚██████╔╝██████╔╝██║     ██║  ██║   ██║   ██║  ██║███████╗██║  ██║ 
echo   ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ 

pause

echo Closing AnyDesk...
taskkill /IM anydesk-5-5-3.exe /F >nul 2>&1
echo Deleting AnyDesk configuration files...
set CONFIG_PATH=%APPDATA%\AnyDesk
if exist "%CONFIG_PATH%\service.conf" (
    del "%CONFIG_PATH%\service.conf"
    echo Deleted service.conf
) else (
    echo service.conf not found.
)
if exist "%CONFIG_PATH%\system.conf" (
    del "%CONFIG_PATH%\system.conf"
    echo Deleted system.conf
) else (
    echo system.conf not found.
)

echo Done! Your AnyDesk ID has been changed.
pause
