@echo off
@title RP Server #1
:iniServer
echo.
echo Sky-Universe
echo.
echo.
echo Initiating Server 1 [Port:30000]
echo %date%
echo.
echo %time% : Searching for Cache...
rmdir /S /Q cache
echo %time% : Cache Cleared!
echo %time% : Launching Server
run +exec server.cfg
echo %time% : Server was shut down..
echo %time% : Attempting to restart server...
echo.
goto iniServer