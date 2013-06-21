echo -------------------------------------------------------------------
echo Building Ekb.Server ...
cd Ekb.Server
call build.cmd
echo off
set BUILD_SERVER_STATUS=%BUILD_STATUS%
cd ..
echo Done 
echo -------------------------------------------------------------------
echo -
