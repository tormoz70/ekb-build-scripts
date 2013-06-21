echo -------------------------------------------------------------------
echo Updating Ekb.Client.SL ...
cd Ekb.Client.SL
git pull
cd ..
echo Done
echo -------------------------------------------------------------------
echo -

echo -------------------------------------------------------------------
echo Updating Ekb.Server ...
cd Ekb.Server
git pull
cd ..
echo Done 
echo -------------------------------------------------------------------
echo -

echo -------------------------------------------------------------------
echo Updating Bio.Framework.8 ...
cd ..\..\Bio.Framework.8
git pull
cd %BUILD_SERVER_PATH%
echo Done 
echo -------------------------------------------------------------------
echo -
