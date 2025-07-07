@echo off
SETLOCAL

:: Set paths - update these paths if your installation directory is different
SET WEBSTORM_PATH=C:\Users\HP\AppData\Local\Programs\WebStorm\bin\webstorm64.exe
SET ICON_PATH=C:\Users\HP\AppData\Local\Programs\WebStorm\bin\webstorm.ico

:: Add context menu for right-click on folders
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WebStorm" /ve /t REG_SZ /d "Open with WebStorm" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WebStorm" /v "Icon" /t REG_SZ /d "%ICON_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with WebStorm\command" /ve /t REG_SZ /d "\"%WEBSTORM_PATH%\" \"%%1\"" /f

:: Add context menu for right-click on empty space
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WebStorm" /ve /t REG_SZ /d "Open with WebStorm" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WebStorm" /v "Icon" /t REG_SZ /d "%ICON_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with WebStorm\command" /ve /t REG_SZ /d "\"%WEBSTORM_PATH%\" \"%%V\"" /f

echo "Context menu option for WebStorm added successfully!"
pause
