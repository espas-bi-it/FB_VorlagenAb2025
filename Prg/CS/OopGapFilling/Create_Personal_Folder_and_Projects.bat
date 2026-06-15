@echo off
setlocal enableextensions disabledelayedexpansion
set search={username}
set replace=%USERNAME%

xcopy Aufgaben Abgaben\%USERNAME%\ /e

set textFile=Abgaben\%USERNAME%\Board\Board.csproj.user
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%textFile%" echo(!line:{username}=%USERNAME%!
    endlocal
)

set textFile=Abgaben\%USERNAME%\BoardFunctions\BoardFunctions.csproj.user
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%textFile%" echo(!line:{username}=%USERNAME%!
    endlocal
)

set textFile=Abgaben\%USERNAME%\Player\Player.csproj.user
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%textFile%" echo(!line:{username}=%USERNAME%!
    endlocal
)

set textFile=Abgaben\%USERNAME%\Position\Position.csproj.user
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%textFile%" echo(!line:{username}=%USERNAME%!
    endlocal
)

set textFile=Abgaben\%USERNAME%\Ship\Ship.csproj.user
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
    set "line=%%i"
    setlocal enabledelayedexpansion
    >>"%textFile%" echo(!line:{username}=%USERNAME%!
    endlocal
)
@echo on
pause