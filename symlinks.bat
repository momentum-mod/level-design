@setlocal enableextensions
@cd /d "%~dp0"

SET mmdir=C:\Program Files (x86)\Steam\steamapps\sourcemods\momentum
SET matdir=%~dp0\assets\materials

mklink /d "%mmdir%\materials\momentum" "%matdir%\momentum"
mklink /d "%mmdir%\materials\models" "%matdir%\models"
mklink /d "%mmdir%\materials\skybox" "%matdir%\skybox"
mklink /d "%mmdir%\models" "%~dp0\assets\models"

pause