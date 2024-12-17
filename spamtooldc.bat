@echo off
title Spam Tool Discord -Legendary Sir
setlocal enabledelayedexpansion
chcp 65001 > nul
color 5
set /a count=1

:main
call :logo
echo.
set /p token="$>"
echo.
set /p cid="$>"
echo.
set /p msg="$>"
echo.
echo Press enter to spam!
pause >nul
goto :loop

:loop
curl  -X POST -H "Authorization: %token%" -H "Content-Type: application/json" -d "{\"content\":\"%msg%\"}" https://discord.com/api/v9/channels/%cid%/messages
echo SENT MESSAGE! [%count%]
set /a count=%count%+1
goto loop







:logo
echo.
echo.
echo 	██████╗  ██████╗    ███████╗██████╗  █████╗ ███╗   ███╗    ████████╗ ██████╗  ██████╗ ██╗     
echo 	██╔══██╗██╔════╝    ██╔════╝██╔══██╗██╔══██╗████╗ ████║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo 	██║  ██║██║         ███████╗██████╔╝███████║██╔████╔██║       ██║   ██║   ██║██║   ██║██║     
echo 	██║  ██║██║         ╚════██║██╔═══╝ ██╔══██║██║╚██╔╝██║       ██║   ██║   ██║██║   ██║██║     
echo 	██████╔╝╚██████╗    ███████║██║     ██║  ██║██║ ╚═╝ ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo 	╚═════╝  ╚═════╝    ╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝     ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
                                                         