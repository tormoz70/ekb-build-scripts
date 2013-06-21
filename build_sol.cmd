echo Building %1...
%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe %1.sln /t:Rebuild /p:Configuration=Release /fl /flp:logfile=build.%1.log;verbosity=normal /nologo /noconsolelogger
set BUILD_STATUS=%ERRORLEVEL%
if %BUILD_STATUS%==0 echo Build success
if not %BUILD_STATUS%==0  echo Build failed
