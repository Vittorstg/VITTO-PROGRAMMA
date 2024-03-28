@echo off
color 0A
title Vitto Program v10.0 starting...

echo.
echo.
echo              Vitto Program v10.0 starting...  
ping localhost -n 2 >nul  
cls

echo.
echo. 
echo                        Vitto Program v10.0 starting...  
ping localhost -n 2 >nul
cls

echo.
echo.
echo                                     Vitto Program v10.0 starting...  
ping localhost -n 2 >nul


:menu
cls
echo **********************************  ********************************
echo *                                *  *=***** ENGLISH EDITION *****=*  
echo *        Vitto Program          *  *=***=*****************=***=*
echo *             v10.0             *
echo *                                *
echo **********************************




echo/ 
echo/
echo     ==============================
echo     =   1. Tools                 =
echo     =   2. Internet              =
echo     =   3. System                = 
echo     =   4. Network               =
echo     =   5. Multimedia            =
echo     =   6. Games                 =
echo     =   7. Customize             =
echo     =   0. Exit                  =
echo     ==============================
echo/

set /p choice="Choice: "
if %choice%==1 call :tools
if %choice%==2 call :internet
if %choice%==3 call :system
if %choice%==4 call :network
if %choice%==5 call :multimedia
if %choice%==6 call :games
if %choice%==7 call :customize
if %choice%==0 exit

:tools
cls
echo     ======================= 
echo     = Tools               =
echo     =======================
echo     = 1. Calculator       =
echo     = 2. Notepad          =
echo     = 3. Paint            =
echo     = 4. Calendar         =
echo     = 5. Clock            =  
echo     = 0. Back             =
echo     =======================

set /p choice="Choice: "
if %choice%==1 start calc.exe
if %choice%==2 start notepad.exe
if %choice%==3 start mspaint.exe
if %choice%==4 start outlookcal:
if %choice%==5 start ms-clock:
if %choice%==0 goto menu
goto tools

:internet
cls
echo     ====================
echo     = Internet        =
echo     ====================  
echo     = 1. Browser       =
echo     = 2. Mail          =
echo     = 3. Weather       =
echo     = 0. Back          =
echo     ====================

set /p choice="Choice: "
if %choice%==1 start msedge 
if %choice%==2 start outlookmail:
if %choice%==3 start bingweather:
if %choice%==0 goto menu
goto internet

:system
cls
echo     ==================  
echo     = System          =
echo     ==================
echo     = 1. Explorer     =
echo     = 2. Task Manager =
echo     = 3. Command      = 
echo     = 0. Back         =
echo     ==================

set /p choice="Choice: "
if %choice%==1 start explorer
if %choice%==2 start taskmgr
if %choice%==3 start cmd
if %choice%==0 goto menu
goto system

:network
cls
echo     ==============
echo     = Network     =
echo     ==============
echo     = 1. IP        = 
echo     = 2. Ping      =
echo     = 3. Tracer    =
echo     = 0. Back      =
echo     ==============

set /p choice="Choice: "
if %choice%==1 ipconfig /all
if %choice%==2 ping google.com 
if %choice%==3 tracert google.com
if %choice%==0 goto menu
goto network

:multimedia
cls
echo     ====================
echo     = Multimedia      =  
echo     ====================
echo     = 1. Music         =
echo     = 2. Photos        =
echo     = 3. Sound Rec.    =
echo     = 0. Back          =
echo     ====================

set /p choice="Choice: "
if %choice%==1 start wmplayer
if %choice%==2 start microsoft.windows.photos: 
if %choice%==3 start soundrecorder
if %choice%==0 goto menu
goto multimedia

:games
cls   
echo     ==================
echo     = Games          =
echo     ==================
echo     = 1. Minesweeper  =
echo     = 2. Solitaire    =
echo     = 0. Back         =
echo     ==================

set /p choice="Choice: "
if %choice%==1 start winmine
if %choice%==2 start sol.exe
if %choice%==0 goto menu
goto games

:customize
cls
echo     =======================
echo     = Customization      =
echo     =======================
echo     = 1. Background       =
echo     = 2. Colors           =
echo     = 3. Name             =
echo     = 4. Language         =
echo     = 0. Back             =
echo     =======================

set /p choice="Choice: "
if %choice%==1 call :background 
if %choice%==2 call :colors
if %choice%==3 call :name
if %choice%==4 call :language
if %choice%==0 goto menu
goto customize

:background
// codice per sfondo
goto customize

:colors
// codice per colori
goto customize

:name
// codice per nome
goto customize

:language
// codice per lingua
goto customize
