@echo off
COLOR 2F
echo.
echo *** CLIENTE ***
echo.
set /p pasta="Pasta DESTINO: "
IF NOT EXIST %pasta% GOTO ERRO
echo.
echo *** Copiando para %pasta%...
echo.
echo *** Pressione CONTROL + C para cancelar
echo.
udp-receiver | 7za x -bso0 -bd -ttar -aoa -si -o"%pasta%"
goto FIM

:ERRO
echo.
echo *** ERRO: A pasta %pasta% nao existe!
echo.

:FIM
pause