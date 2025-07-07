@echo off
SETLOCAL

:: Set paths
SET IDEA_PATH=C:\Users\HP\AppData\Local\Programs\IntelliJ IDEA Ultimate\bin\idea64.exe
SET ICON_PATH=C:\Users\HP\AppData\Local\Programs\IntelliJ IDEA Ultimate\bin\idea.ico

:: Add context menu for right-click on folders
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with IntelliJ IDEA" /ve /t REG_SZ /d "Open with IntelliJ IDEA" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with IntelliJ IDEA" /v "Icon" /t REG_SZ /d "%ICON_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\Open with IntelliJ IDEA\command" /ve /t REG_SZ /d "\"%IDEA_PATH%\" \"%%1\"" /f

:: Add context menu for right-click on empty space
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with IntelliJ IDEA" /ve /t REG_SZ /d "Open with IntelliJ IDEA" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with IntelliJ IDEA" /v "Icon" /t REG_SZ /d "%ICON_PATH%" /f
reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Open with IntelliJ IDEA\command" /ve /t REG_SZ /d "\"%IDEA_PATH%\" \"%%V\"" /f

echo "Context menu option added successfully!"
pause
