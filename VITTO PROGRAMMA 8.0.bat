@echo off
color 0A
title Vitto Programma v8.0

:menu
cls
echo **************************************************
echo *                 Vitto Programma               *
echo *                     v8.0                      * 
echo **************************************************

echo/
echo               =========== MENU ===========
echo/ 
echo                1. Strumenti
echo                2. Internet
echo                3. Sistema  
echo                4. Rete
echo                5. Multimedia
echo                6. Giochi
echo                7. Personalizzazione
echo                0. Esci
echo/
echo              ==========================

set /p scelta=Inserire scelta:
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
echo Strumenti:
echo ===========
echo 1. Calcolatrice  
echo 2. Blocco note
echo 3. Paint
echo 4. Calendario
echo 5. Orologio
echo 0. Indietro

set /p scelta=Scelta:
if %scelta%==1 start calc.exe
if %scelta%==2 start notepad.exe
if %scelta%==3 start mspaint.exe
if %scelta%==4 start outlookcal: 
if %scelta%==5 start ms-clock:
if %scelta%==0 goto menu
goto strumenti

:internet
cls
echo Internet:
echo =========
echo 1. Browser
echo 2. Posta
echo 3. Meteo
echo 0. Indietro

set /p scelta=Scelta:
if %scelta%==1 start msedge
if %scelta%==2 start outlookmail:
if %scelta%==3 start bingweather:
if %scelta%==0 goto menu
goto internet

:sistema
cls
echo Sistema:
echo ======== 
echo 1. Esplora file
echo 2. Gestione attivita
echo 3. Prompt dei comandi
echo 0. Indietro
  
set /p scelta=Scelta:
if %scelta%==1 start explorer
if %scelta%==2 start taskmgr
if %scelta%==3 start cmd
if %scelta%==0 goto menu
goto sistema

:rete
cls
echo Rete:
echo =====
echo 1. IP 
echo 2. Ping
echo 3. Traceroute
echo 0. Indietro

set /p scelta=Scelta:
if %scelta%==1 ipconfig /all
if %scelta%==2 ping google.com
if %scelta%==3 tracert google.com
if %scelta%==0 goto menu
goto rete

:multimedia
cls
echo Multimedia:
echo ==========
echo 1. Lettore musicale
echo 2. Galleria foto 
echo 3. Registratore vocale
echo 0. Indietro

set /p scelta=Scelta:
if %scelta%==1 start wmplayer
if %scelta%==2 start microsoft.windows.photos:
if %scelta%==3 start soundrecorder
if %scelta%==0 goto menu
goto multimedia

:giochi
cls   
echo Giochi:
echo =======
echo 1. Campo minato
echo 2. Solitario
echo 0. Indietro
  
set /p scelta=Scelta:  
if %scelta%==1 start winmine
if %scelta%==2 start sol.exe
if %scelta%==0 goto menu
goto giochi

:personalizza 
cls
echo Personalizza:
echo =============
echo 1. Sfondo desktop 
echo 2. Colori console
echo 3. Nome PC
echo 0. Indietro

set /p scelta=Scelta:
if %scelta%==1 call :sfondo
if %scelta%==2 call :colori  
if %scelta%==3 call :nomepc
if %scelta%==0 goto menu
goto personalizza

:sfondo
cls
echo Scegli sfondo desktop:
echo =======================
echo 1. Default di Windows
echo 2. Immagine natura 
echo 3. Immagine astratta

set /p scelta=Scelta:
if %scelta%==1 reg delete "HKCU\Control Panel\Desktop" /v Wallpaper /f
if %scelta%==2 RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1, c:\sfondi\natura.jpg
if %scelta%==3 RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1, c:\sfondi\astratto.jpg
goto personalizza

:colori
cls  
echo Scegli schema colori console:
echo =============================
echo 1. Default  
echo 2. Verde
echo 3. Blu  

set /p scelta=Scelta:
if %scelta%==1 color 07  
if %scelta%==2 color 0A
if %scelta%==3 color 0B
goto personalizza

:nomepc
cls
set /p nomepc=Inserisci nuovo nome PC:
rename %computername% %nomepc%
goto personalizza
