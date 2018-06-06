@echo off
color 4F
echo.
echo *** SERVIDOR ***
echo.
set /p pasta="Pasta a ser copiada: "
IF NOT EXIST %pasta% GOTO ERRO
echo.
echo *** Copiando de %pasta%...
echo.
echo *** Pressione enter quando TODOS demais PCs estiverem prontos para receber
echo *** Pressione CONTROL + C para cancelar
echo.
7za -bso0 -bd  -ttar a dummy e:\www\consultar -so | udp-sender
goto FIM

:ERRO
echo.
echo *** ERRO: A pasta %pasta% nao existe!
echo.

:FIM
pause