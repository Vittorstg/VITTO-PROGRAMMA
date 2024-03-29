@echo off
color 0E
title Vitto Program v11 starting 

REM Title animation
echo.
echo.  
echo :::'##::::::'##:::
echo :'####::::'####:::
echo :.. ##::::.. ##:::
echo ::: ##:::::: ##:::
echo ::: ##:::::: ##:::
echo ::: ##:::::: ##:::
echo :'######::'######:
echo :......:::......::
ping localhost -n 2 >nul
cls

echo.
echo.
echo         :::'##::::::'##:::
echo         :'####::::'####:::
echo         :.. ##::::.. ##:::
echo         ::: ##:::::: ##:::
echo         ::: ##:::::: ##:::
echo         ::: ##:::::: ##:::
echo         :'######::'######:
echo         :......:::......::  
ping localhost -n 2 >nul
cls

echo.
echo.  
echo                   :::'##::::::'##:::
echo                   :'####::::'####:::
echo                   :.. ##::::.. ##:::
echo                   ::: ##:::::: ##:::
echo                   ::: ##:::::: ##:::
echo                   ::: ##:::::: ##:::
echo                   :'######::'######:
echo                   :......:::......::		
ping localhost -n 2 >nul
cls

echo WELCOME TO VITTO PROGRAM V.11.0
cls  

:menu
cls
echo Vitto Program

echo    :::     :::          :::         :::                :::::::                                         
echo   :+:     :+:        :+:+:       :+:+:               :+:   :+:                                
echo  +:+     +:+          +:+         +:+               +:+   +:+                             
echo +#+     +:+          +#+         +#+               +#+   +:+                            
echo +#+   +#+           +#+         +#+               +#+   +#+                       
echo #+#+#+#            #+#         #+#       #+#     #+#   #+#                    
echo  ###            #######     #######     ###      #######           
echo                                                                                             .
echo                      ::::::::::       ::::    :::
echo                     :+:              :+:+:   :+: 
echo                    +:+              :+:+:+  +:+
echo                   +#++:++#         +#+ +:+ +#+
echo                  +#+              +#+  +#+#+#
echo                 #+#              #+#   #+#+#
echo                ##########       ###    ####             EDITION.
echo/ 
echo/   

echo     ============================
echo     =          MENU            =
echo     ============================
echo     =   1. Tools               =  
echo     =   2. Internet            =
echo     =   3. System              =
echo     =   4. Network             =
echo     =   5. Multimedia          =
echo     =   6. Games               =
echo     =   7. Customize           = 
echo     =   0. Exit                =
echo     ============================
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
echo     = Internet         =
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
echo     = System         =
echo     ==================
echo     = 1. Explorer    =
echo     = 2. Task Manager=
echo     = 3. Prompt      =
echo     = 0. Back        =
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
echo     = Network    =
echo     ==============
echo     = 1. IP      =
echo     = 2. Ping    =
echo     = 3. Trace   = 
echo     = 0. Back    =
echo     ==============

set /p choice="Choice: "
if %choice%==1 ipconfig
if %choice%==2 ping localhost -n 4   
if %choice%==3 tracert google.com
if %choice%==0 goto menu
goto network 

:multimedia
cls
echo     =================  
echo     = Multimedia    =
echo     =================
echo     = 1. Music      =
echo     = 2. Video      =
echo     = 3. Pictures   =
echo     = 0. Back       =
echo     =================

set /p choice="Choice: "
if %choice%==1 start wmplayer
if %choice%==2 start dvdplay
if %choice%==3 start microsoft.photos
if %choice%==0 goto menu
goto multimedia

:games
cls
echo     ============
echo     = Games    =
echo     ============
echo     = 1. Mines = 
echo     = 2. Solit =
echo     = 0. Back  =
echo     ============ 

set /p choice="Choice: "
if %choice%==1 start winmine
if %choice%==2 start sol.exe
if %choice%==0 goto menu  
goto games

:customize
cls
echo     ===============
echo     = Customize   =
echo     ===============
echo     = 1. Colors   =
echo     = 2. Wallpaper=
echo     = 0. Back     =
echo     ===============

set /p choice="Choice: "
if %choice%==1 control color
if %choice%==2 start desk.cpl
if %choice%==0 goto menu
goto customize
