set _backup_current_path=%CD%
cd %DEPLOY_PATH%
call backup.bat ekb
cd %_backup_current_path%
echo Deploing...
xcopy Ekb.Client.SL\ekb\*.* %DEPLOY_PATH%\ekb-tst /EXCLUDE:ekb-build-scripts\deploy_exclude.lst /E /Y /R /I
if errorlevel 0 (
echo Deploy success
) else (
echo Deploy failed
)
