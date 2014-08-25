cd /d %~dp0

SET TGT="%CD%\..\lib"
SET ORGBOOT="%CD%\Boot"
SET DSTBOOT="%CD%\..\lib\Boot"

IF NOT EXIST %TGT% (MD %TGT%)

IF NOT EXIST %DSTBOOT% (MKLINK %DSTBOOT% %ORGBOOT%)

REG ADD hkcu\Environment /v LUA_PATH /t REG_SZ /d "%TGT%\?" /f

PAUSE
