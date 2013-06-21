cd %DEPLOY_PATH%
call backup.bat ekb
cd %BUILD_SERVER_PATH%
echo Deploing...
xcopy Ekb.Client.SL\ekb\*.* %DEPLOY_PATH%\ekb /EXCLUDE:deploy_exclude.lst /E /Y /R /I
echo Done
