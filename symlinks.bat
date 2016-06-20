@setlocal enableextensions
@cd /d "%~dp0"

SET mmdir=C:\Program Files (x86)\Steam\steamapps\sourcemods\momentum
SET matdir=%~dp0\assets\materials

mklink /d "%mmdir%\materials\momentum" "%matdir%\momentum"
mklink /d "%mmdir%\materials\models\momentum" "%matdir%\models\momentum"
mklink /d "%mmdir%\materials\skybox" "%matdir%\skybox"
mklink /d "%mmdir%\models\momentum" "%~dp0\assets\models\momentum"

pause