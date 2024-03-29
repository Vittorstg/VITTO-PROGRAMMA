@echo off
color 0E
title Vitto Programma v11 starting

REM Animazione titolo
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

echo BENVENUTO NEL VITTO PROGRAMMA V.11.0
cls

:menu
cls
echo Programma Vitto                        
 
echo    :::     :::          :::         :::                ::::::: 
echo   :+:     :+:        :+:+:       :+:+:               :+:   :+: 
echo  +:+     +:+          +:+         +:+               +:+   +:+  
echo +#+     +:+          +#+         +#+               +#+   +:+   
echo +#+   +#+           +#+         +#+               +#+   +#+    
echo #+#+#+#            #+#         #+#       #+#     #+#   #+#     
echo  ###            #######     #######     ###      #######                V.11.0




echo/
echo/  
echo     =============================
echo     =          MENU'            =
echo     =============================
echo     =   1. Strumenti            =
echo     =   2. Internet             =
echo     =   3. Sistema              =
echo     =   4. Rete                 =
echo     =   5. Multimedia           =
echo     =   6. Giochi               =  
echo     =   7. Personalizza         =
echo     =   0. Esci                 =
echo     =============================
echo/

set /p scelta="Scelta: "
if %scelta%==1 call :strumenti
if %scelta%==2 call :internet
if %scelta%==3 call :sistema  
if %scelta%==4 call :rete
if %scelta%==5 call :multimedia
if %scelta%==6 call :giochi
if %scelta%==7 call :personalizza
if %scelta%==0 exit

:strumenti
cls
echo     =======================
echo     = Strumenti          =
echo     =======================
echo     = 1. Calcolatrice    =
echo     = 2. Blocco note     =
echo     = 3. Paint           = 
echo     = 4. Calendario      =
echo     = 5. Orologio        =
echo     = 0. Indietro        =
echo     =======================

set /p scelta="Scelta: "
if %scelta%==1 start calc.exe
if %scelta%==2 start notepad.exe 
if %scelta%==3 start mspaint.exe
if %scelta%==4 start outlookcal:
if %scelta%==5 start ms-clock:  
if %scelta%==0 goto menu
goto strumenti

:internet
cls
echo     ====================  
echo     = Internet         =
echo     ====================
echo     = 1. Browser        =
echo     = 2. Posta          =
echo     = 3. Meteo          =
echo     = 0. Indietro       =
echo     ====================

set /p scelta="Scelta: "
if %scelta%==1 start msedge
if %scelta%==2 start outlookmail:
if %scelta%==3 start bingweather: 
if %scelta%==0 goto menu
goto internet

:sistema
cls
echo     ==================
echo     = Sistema         =
echo     ==================
echo     = 1. Esplora      =
echo     = 2. Gestione     =
echo     = 3. Prompt       =
echo     = 0. Indietro     =  
echo     ==================

set /p scelta="Scelta: "
if %scelta%==1 start explorer
if %scelta%==2 start taskmgr
if %scelta%==3 start cmd  
if %scelta%==0 goto menu
goto sistema

:rete
cls
echo     ==============
echo     = Rete         =
echo     ==============
echo     = 1. IP         =
echo     = 2. Ping       =
echo     = 3. Trace      =
echo     = 0. Indietro   =
echo     ==============

set /p scelta="Scelta: "
if %scelta%==1 ipconfig /all
if %scelta%==2 ping google.com
if %scelta%==3 tracert google.com
if %scelta%==0 goto menu
goto rete

:multimedia
cls
echo     ====================
echo     = Multimedia       =
echo     ====================   
echo     = 1. Musica        =
echo     = 2. Foto          =
echo     = 3. Audio         =
echo     = 0. Indietro      =
echo     ====================

set /p scelta="Scelta: "
if %scelta%==1 start wmplayer
if %scelta%==2 start microsoft.windows.photos:
if %scelta%==3 start soundrecorder  
if %scelta%==0 goto menu
goto multimedia

:giochi
cls
echo     ==================
echo     = Giochi          =
echo     ==================
echo     = 1. Minato       =
echo     = 2. Solitario    =  
echo     = 0. Indietro     =
echo     ==================

set /p scelta="Scelta: "  
if %scelta%==1 start winmine
if %scelta%==2 start sol.exe
if %scelta%==0 goto menu
goto giochi

:personalizza
cls
echo     =======================
echo     = Personalizzazione  =
echo     =======================
echo     = 1. Sfondo          =
echo     = 2. Colori          =
echo     = 3. Nome PC         =
echo     = 0. Indietro        =
echo     =======================

set /p scelta="Scelta: "
if %scelta%==1 call :sfondo
if %scelta%==2 call :colori 
if %scelta%==3 call :nome
if %scelta%==0 goto menu
goto personalizza

:sfondo
cls
echo Scegli uno sfondo:  
echo ===================
echo 1. Default
echo 2. Natura
echo 3. Astratto
echo 0. Indietro

set /p scelta="Scelta: "
if %scelta%==1 reg delete HKCU\Control Panel\Desktop /v Wallpaper /f
if %scelta%==2 RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1, c:\sfondi\natura.jpg
if %scelta%==3 RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1, c:\sfondi\astratto.jpg
if %scelta%==0 goto personalizza
goto sfondo

:colori
cls
echo Scegli colore: 
echo ==============
echo 1. Verde
echo 2. Blu   
echo 3. Viola
echo 4. bianco default
echo 0. Indietro

set /p scelta="Scelta: "
if %scelta%==1 color 0A
if %scelta%==2 color 1B  
if %scelta%==3 color 5D
if %scelta%==4 color 70
if %scelta%==0 goto personalizza
goto colori

:nome
cls
set /p nuovo_nome="Inserisci nuovo nome PC: "
if not defined nuovo_nome goto nome
rename computer %nuovo_nome%
goto menu
