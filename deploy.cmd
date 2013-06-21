cd %DEPLOY_PATH%
call backup.bat ekb
cd %BUILD_SERVER_PATH%
echo Deploing...
xcopy Ekb.Client.SL\ekb\*.* %DEPLOY_PATH%\ekb-tst /EXCLUDE:build-scripts\deploy_exclude.lst /E /Y /R /I
if errorlevel 0 (
echo Deploy success
) else (
echo Deploy failed
)
