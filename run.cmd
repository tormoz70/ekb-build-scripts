set BUILD_SERVER_PATH=%CD%
set DEPLOY_PATH=C:\www
set BUILD_SERVER_STATUS=0
set BUILD_CLIENT_STATUS=0

echo -------------------------------------------------------------------
echo - BUILD_SERVER_PATH = %BUILD_SERVER_PATH%
echo - DEPLOY_PATH = %DEPLOY_PATH%
echo -
echo - This script about to deploy Ekb-Cabinet... (To cancel press CNTRL+C)
echo -------------------------------------------------------------------

PAUSE

call ekb-build-scripts\update.cmd
call ekb-build-scripts\build.cmd

echo -
echo -
IF %BUILD_SERVER_STATUS% == 0 IF %BUILD_CLIENT_STATUS% == 0 (
echo All builds sucsess!
call ekb-build-scripts\deploy.cmd
echo -------------------------------------------------------------------
echo - Deploy success!
echo -------------------------------------------------------------------
) ELSE (
echo -------------------------------------------------------------------
echo - Some builds failed!
echo - Deploing canceled!
echo -------------------------------------------------------------------
)
pause