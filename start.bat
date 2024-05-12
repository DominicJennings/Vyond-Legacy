:: Important stuff
@echo off && cls
title Vyond Legacy
if not exist "installed" (if not exist "notinstalled" (echo Vyond Legacy Configuration File >> notinstalled))
::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start Vyond Legacy ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo Vyond Legacy is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo Vyond Legacy is now starting...
echo Please navigate to http://localhost on your browser.
npm start
