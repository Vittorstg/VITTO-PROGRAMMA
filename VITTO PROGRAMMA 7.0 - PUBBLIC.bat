@echo off
cls                                                                                          
echo    *************************************************
echo    *                                               *  
echo    *                 Vitto Programma               *
echo    *                  Versione 7.0                 *
echo    *                                               *                                
echo    *************************************************

:inizio
echo/
echo/  
echo     ====================== 
echo    *       Categorie:     *
echo    *                      *
echo    *   1. Strumenti       *
echo    *   2. Internet        *  
echo    *   3. Sistema         *
echo    *   4. Rete            *
echo    *   5. Manutenzione    *
echo     ======================
echo/
set /p scelta=Inserisci numero categoria: 
if %scelta%==1 goto strumenti
if %scelta%==2 goto internet
if %scelta%==3 goto sistema  
if %scelta%==4 goto rete
if %scelta%==5 goto manutenzione

:strumenti
echo/
echo     ====================
echo    * Strumenti:         *
echo    *                    *
echo    *  1. Calcolatrice   *
echo    *  2. Blocco note    * 
echo    *  3. Calendario     *
echo    *  4. Sveglia        *
echo     ====================
echo/
set /p scelta=Inserisci numero scelta:
if %scelta%==1 start calc.exe
if %scelta%==2 start notepad.exe  
if %scelta%==3 start outlookcal:
if %scelta%==4 start ms-clock:alarms
goto menu

:internet
echo/  
echo     ================
echo    * Internet:      *
echo    *                *  
echo    *  1. Meteo      *
echo    *  2. Browser    *
echo    *  3. Posta      *
echo     ================
echo/
set /p scelta=Inserisci numero scelta:
if %scelta%==1 start bingweather:
if %scelta%==2 start msedge
if %scelta%==3 start outlookmail: 
goto menu

:sistema
echo/
echo     =============
echo    * Sistema:    *
echo    *             *
echo    *  1. File    *
echo    *  2. Attivita*
echo    *  3. Prompt  *
echo     =============
echo/
set /p scelta=Inserisci numero scelta:
if %scelta%==1 start explorer
if %scelta%==2 start taskmgr
if %scelta%==3 start cmd
goto menu

:rete
echo/  
echo     ===============
echo    * Rete:         * 
echo    *               *
echo    * 1. IP         *
echo    * 2. Ping       *
echo    * 3. Traceroute *
echo     ===============
echo/
set /p scelta=Inserisci numero scelta:
if %scelta%==1 ipconfig /all  
if %scelta%==2 ping localhost
if %scelta%==3 tracert google.com
goto menu

:manutenzione
echo/
echo     ================ 
echo    * Manutenzione:  *
echo    *                *
echo    * 1. Backup      *
echo    * 2. Pulizia     *
echo     ================
echo/ 
set /p scelta=Inserisci numero scelta:
if %scelta%==1 wbadmin start backup
if %scelta%==2 cleanmgr
goto menu

:menu
echo/
echo     Premere INVIO per menu principale...
pause >nul  
cls
goto inizio
