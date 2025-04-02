@echo off

title HSS IT Tool Kit

:: Clean up the temporary script if it exists
if exist "%TEMP%\run_update.bat" del "%TEMP%\run_update.bat"
if exist "%TEMP%\IT-Tool-new.exe" del "%TEMP%\IT-Tool-new.exe"


REM This Section is the Menu Code
:Menu
cls
echo.
echo     [92m_   _       _   _   _   _       _  _  _
echo    [92m/ \ / \     / \ / \ / \ / \     / \/ \/ \   [33m - Created By Harry Paolella
echo   [92m( I   T ) ~ ( T   O   O   L ) ~ ( K  I  T )  [33m - Supported OS ~ windows : 10, 11
echo    [92m\_/ \_/     \_/ \_/ \_/ \_/     \_/\_/\_/   [33m - Version: 2.0.2
echo.
echo.
echo    [94m ~~System Tools~~                        ~~Networks Tools~~
echo.
echo  [33m 1. [0m Remote Desktop                     [33m 12. [0m Ping a Device
echo  [33m 2. [0m SSH                                [33m 13. [0m DNS Resolver
echo  [33m 3. [0m Set Windows Notification           [33m 14. [0m Open Web Page
echo  [33m 4. [0m Check For Malware                  [33m 15. [0m Network Speed Test
echo  [33m 5. [0m QR Code Generator                  [33m 16. [0m Get Wifi Password/Detail
echo  [33m 6. [0m System Performance (CPU,RAM)       [33m 17. [0m Port Scan   
echo  [33m 7. [0m Open Task Manager                  [33m 18. [0m Network Configuration (IP Settings)
echo  [33m 8. [0m Check For Windows Updates          [33m 19. [0m Renew/Release IP Address
echo  [33m 9. [0m Check Disk (Errors/Repairs)        [33m 20. [0m Show MAC Address
echo [33m 10. [0m Check Disk Space                   [33m 21. [0m Firewall Settings
echo [33m 11. [0m Local Users                        [33m 22. [0m File Server (FTP)   
echo.
echo [33m 23. [0m Check updates for IT Tool Kit  
echo [33m 24. [0m Exit                        

echo.
set /p option=Enter an option (1-21): [33m
echo [0m

if /i "%option%"=="1" (
	goto Remote
) else if /i "%option%"=="2" (
	goto SSH
) else if /i "%option%"=="3" (
	goto Notification
) else if /i "%option%"=="4" (
	goto Malware
) else if /i "%option%"=="5" (
	goto QRcode
) else if /i "%option%"=="6" (
	goto SystemPeformance
) else if /i "%option%"=="7" (
	goto TaskManager
) else if /i "%option%"=="8" (
	goto Updates
) else if /i "%option%"=="9" (
	goto Disk
) else if /i "%option%"=="10" (
	goto Disk-Space
) else if /i "%option%"=="11" (
	goto USER
) else if /i "%option%"=="12" (
	goto Ping
) else if /i "%option%"=="13" (
	goto DNS
) else if /i "%option%"=="14" (
	goto webpage
) else if /i "%option%"=="15" (
	goto SpeedTest
) else if /i "%option%"=="16" (
	goto WIFI
) else if /i "%option%"=="17" (
	goto PortScan
) else if /i "%option%"=="18" (
	goto NetworkConfig
) else if /i "%option%"=="19" (
	goto renew-rel-IP
) else if /i "%option%"=="20" (
	goto MAC
) else if /i "%option%"=="21" (
	goto Firewall
) else if /i "%option%"=="22" (
	goto FTP
) else if /i "%option%"=="23" (
	goto Checks
) else if /i "%option%"=="24" (
	goto Exit
) else (
	echo.
	echo This is an incorrect option (1-21)
	echo.
	echo [94mPlease Wait... [0m
	timeout /t 4 /nobreak >nul
	cls
	goto Menu
)


REM this section is the Exit Code
:Exit
cls
echo. [92m
echo =============== [0m
echo    EXIT MENU [92m
echo =============== [0m
echo.
set /p confrim-exit=Are you sure you want to exit [Y/N]: [33m
echo [0m 
if /i "%confrim-exit%"=="y" (
	goto Exit-outro

) else if /i "%confrim-exit%"=="n" (
	echo.
	echo Returing to the IT Tool Kit
	echo [94mPlease wait...  [0m
	Timeout /t 3 /nobreak >nul
	goto Menu
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Exit
)



REM this is the outro when exiting
:Exit-outro
cls
echo.

powershell -Command "Write-Host '               _________          _' -ForegroundColor Blue; Write-Host '              /         \        | |' -ForegroundColor Blue; Write-Host '              |         |     ___| |___' -ForegroundColor Blue; Write-Host '              |         |    |___   ___|' -ForegroundColor Blue; Write-Host '              |         |        | |' -ForegroundColor Blue; Write-Host '              \_________/        |_|' -ForegroundColor Blue; Write-Host '               _________      _________' -ForegroundColor Blue; Write-Host '              /         \    /         \' -ForegroundColor Blue; Write-Host '              |         |    |         |' -ForegroundColor Blue; Write-Host '              |         |    |         |' -ForegroundColor Blue; Write-Host '              |         |    |         |' -ForegroundColor Blue; Write-Host '              \_________/    \_________/' -ForegroundColor Blue; Write-Host ''; Write-Host '   HSS ~ Harry Support Services ~ Harry Paolella, CEO' -ForegroundColor Yellow"

echo.
echo Thank you for purchasing The IT Tool Kit
echo [94mExiting... [0m
Timeout /t 5 /nobreak >nul
exit




:Checks
cls

echo. [92m 
echo     _   _   _   _   _   _     _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \
echo   ( U   P   D   A   T   E ) ( S   E   T   T   I   N   G   S )
echo    \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m 
echo Before proceeding, we need to perform a few checks to ensure that you're able to update the IT Toolkit.
echo.
echo [91mDISCLAIMER[0m ~ You will need an active internet connection and access to our HSS servers.
echo              Please ensure that HSS VPN is turned on.
echo.
set /p checks= Press any key to start checks...
echo.
echo Starting Checks
echo [94mPlease Wait... [0m 
Timeout /t 3 /nobreak >nul
goto Curl

:Curl
:: Check for curl command availability
cls
echo. [92m
echo     _   _   _   _ 
echo    / \ / \ / \ / \
echo   ( C   U   R   L )
echo    \_/ \_/ \_/ \_/
echo. [0m
echo.
echo Checking if you have curl installed
echo [94mPlease Wait... [0m
Timeout /t 3 /nobreak >nul
where curl >nul 2>nul
if %errorlevel% neq 0 (
	echo.
    echo curl is not installed. curl is required to download updates for the IT Tool Kit. Please install curl to continue.
	echo To install curl, visit: https://curl.se/windows/
    echo Once installed, return the update process.
	echo.
	echo Returing back to IT Tool Kit
	echo [94mPlease Wait... [0m
    Timeout /t 3 /nobreak >nul
    goto Menu
) else (
	echo.
    echo Curl is installed.
	echo.
	echo Curl Version:
	curl -V | findstr /R "^curl"
	echo.
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	goto internet-check


)

:internet-check
:: Check internet connectivity
cls
echo. [92m
echo     _   _   _     _   _   _   _   _   _   _
echo    / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( H   S   S ) ( N   E   T   W   O   R   K )
echo    \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo Checking if you have connection to the Harry Support Services (HSS) Network
echo [94mPlease Wait...  [0m
Timeout /t 3 /nobreak >nul
ping -n 1 192.168.68.2 >nul
if %errorlevel% neq 0 (
    echo No connection detected. Please connect to the network by turing on your VPN and try again.
	echo.
	echo Returing back to IT Tool Kit
	echo [94mPlease Wait...  [0m
    Timeout /t 5 /nobreak >nul
	goto Menu
) else (
	echo.
    echo You are connected to HSS Network.
	echo [94mPlease Wait..  [0m
	Timeout /t 3 /nobreak >nul
	goto CheckOS
)

:CheckOS
:: Check Windows version to determine the correct IT Tool Kit to download
cls
echo.  [92m
echo     _   _   _   _   _   _   _     _   _ 
echo    / \ / \ / \ / \ / \ / \ / \   / \ / \
echo   ( W   I   N   D   O   W   S ) ( O   S )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/
echo.  [0m
echo Checking your Windows version...
echo [94mPlease Wait...  [0m
Timeout /t 3 /nobreak >nul

:: Get the Windows version number
ver | findstr /i "10." >nul
if %errorlevel% == 0 (
    set TOOLKIT=IT Tool Kit for Win 10, 11
) else (
    set TOOLKIT=IT Tool Kit for Win 7, 8, 8.1
)

echo.
echo Detected OS: %TOOLKIT%
echo [94mPlease Wait...  [0m
Timeout /t 3 /nobreak >nul
goto Update



:Update
cls
:: Get the directory of the batch file
set LOCAL_DIR=%~dp0

:: Specify the URLs for the old and new OS toolkits
if "%TOOLKIT%"=="IT Tool Kit for Win 7, 8, 8.1" (
    set URL=http://harrysupport.com/shop/IT-Tool/win-7-8/IT-Tool-Kit.exe
) else (
    set URL=http://harrysupport.com/shop/IT-Tool/win-10-11/IT-Tool-Kit.exe
)

echo. [92m
echo     _   _   _   _   _   _     _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \
echo   ( U   P   D   A   T   E ) ( S   E   T   T   I   N   G   S )
echo    \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m
:: Ask the user if they want to update
set /p UPDATE_CHOICE=Do you want to update the IT Tool Kit? (y/n): [33m
echo [0m

:: Check if the user chose 'y'
if /i "%UPDATE_CHOICE%"=="y" (
    echo Downloading the latest update script...
    :: Download the latest version of IT-Tool.bat to a temporary file
    curl -o "%TEMP%\IT-Tool-new.exe" %URL%
    
    :: Check if the download was successful
    if exist "%TEMP%\IT-Tool-new.exe" (
        echo.
        echo Update script downloaded. Preparing to apply the update...

        :: Create a temporary batch file (run_update.bat) in the temp folder
        echo @echo off > "%TEMP%\run_update.bat"
        echo.
        echo Restart Required to apply update
        echo.
        set /p restart= Press any key to Restart your IT Tool Kit....
        echo.
        echo timeout /t 5 /nobreak >> "%TEMP%\run_update.bat"
        echo copy /y "%TEMP%\IT-Tool-new.exe" "%LOCAL_DIR%IT-Tool-Kit.exe" >> "%TEMP%\run_update.bat"
        echo start "" "%LOCAL_DIR%IT-Tool-Kit.exe" >> "%TEMP%\run_update.bat"
		echo exit >> "%TEMP%\run_update.bat"
        
        :: Run the temporary script to apply the update and run the new script
        start "" "%TEMP%\run_update.bat"
		exit /b


        :: Check if the update script executed successfully
        if %errorlevel% neq 0 (
            echo Update failed during execution. Error Code: %errorlevel%
            echo Please check the log for details.
            pause
            exit /b
        )

        :: Clean up the temporary script
        del "%TEMP%\run_update.bat"

        :: Delete the downloaded file after the update
        del "%TEMP%\IT-Tool-new.exe"
        
        echo Update applied successfully.

    ) else (
        echo Failed to download the update. Curl may have encountered an issue.
        echo Error: %errorlevel%
        pause
        exit /b
    )
    
) else if /i "%UPDATE_CHOICE%"=="n" (
    echo No update performed.
    echo.
	echo Returing to IT Tool Kit
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
    goto Menu
) else (
    echo Invalid option entered. Please use 'y' or 'n' to respond.
    echo.
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
    goto Update
)


Rem This section is the Remote Desktop Code 
:Remote
cls
echo.
echo  [92m     
echo     _   _   _   _   _   _ 
echo    / \ / \ / \ / \ / \ / \
echo   ( R   E   M   O   T   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m
set /p host=Enter the IP Address or Host: [33m
echo [0m
set /p user=Enter Username: [33m
echo [0m
set /p pass=Enter Password: [33m
echo [0m
cmdkey /add:%host% /user:%user% /pass:%pass% >nul
timeout /t 3 /nobreak >nul
echo Connecting to Device...
mstsc /v:%host%
cmdkey /delete:%host% >nul
goto Remote-Menu


REM This is the remote connection Menu Code
:Remote-Menu
cls
echo. [92m
echo     _   _   _   _   _   _ 
echo    / \ / \ / \ / \ / \ / \
echo   ( R   E   M   O   T   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Remote Control Another Device
echo [33m 3. [0m Exit

echo.
set /p remote-option=Choose an option: [33m
echo [0m
if /i "%remote-option%"=="1" (
	cls
	goto Menu
) else if /i "%remote-option%"=="2" (
	cls
	goto Remote
) else if /i "%remote-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Remote-Menu
)




REM This Section is the SSH Code
:SSH
cls
echo.  [92m
echo     _   _   _ 
echo    / \ / \ / \
echo   ( S   S   H )
echo    \_/ \_/ \_/
echo.  [0m
set /p ssh-IP=Enter the IP Address: [33m
echo [0m
set /p ssh-user=Enter the username: [33m
echo [0m
set /p ssh-start=Would you like to start your SSH connection [Y/N]: [33m
echo [0m
if  /i "%ssh-start%"=="y" (
		cls
		echo Starting SSH Connection...
		ssh %ssh-user%@%ssh-IP%
) else (
goto SSH-Menu
)

REM This is the SSH Menu Code
:SSH-Menu
cls
echo.  [92m
echo     _   _   _ 
echo    / \ / \ / \
echo   ( S   S   H )
echo    \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Start Another SSH Connection
echo [33m 3. [0m Exit

echo.
set /p ssh-option=Choose an option: [33m
echo [0m
if /i "%ssh-option%"=="1" (
	cls
	goto Menu
) else if /i "%ssh-option%"=="2" (
	cls
	goto SSH
) else if /i "%ssh-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto SSH-Menu
)






REM This Section is the Ping Code
:Ping
cls
echo.   [92m
echo     _   _   _   _ 
echo    / \ / \ / \ / \
echo   ( P   I   N   G )
echo    \_/ \_/ \_/ \_/
echo.   [0m
set /p ping-IP=Enter the IP Address of the Device you want to ping: [33m
echo [0m

set/p ping-start= Would you like to start pinging this device [Y/N]: [33m
echo [0m
if /i "%ping-start%"=="y" (
		echo [94m Starting Ping... [0m
		ping %ping-IP%
		echo.
		pause
) else if /i "%ping-start%"=="n" (
		echo Returing to Ping Menu
		echo [94mPlease Wait... [0m
		Timeout /t 3 /nobreak >nul
		goto Ping-Menu	
) else (
		echo This is an Incorrect option
		echo [94mPlease Wait... [0m
		Timeout /t 3 /nobreak >nul
		echo.
		goto Ping-Menu
)

REM This is the Ping Menu Code
:Ping-Menu
cls
echo.   [92m
echo     _   _   _   _ 
echo    / \ / \ / \ / \
echo   ( P   I   N   G )
echo    \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Ping another device
echo [33m 3. [0m Exit

echo.
set /p ping-option=Choose an option: [33m
echo [0m
if /i "%ping-option%"=="1" (
	cls
	goto Menu
) else if /i "%ping-option%"=="2" (
	cls
	goto Ping
) else if /i "%ping-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Ping-Menu
)



REM This Section is for the DNS Resolver Code
:DNS
cls
echo.   [92m
echo     _   _   _ 
echo    / \ / \ / \
echo   ( D   N   S )
echo    \_/ \_/ \_/
echo.   [0m
set /p Domain=Enter the Domain Name: [33m
echo [0m

echo.
set/p DNS-confirm=Do you want to start Resolving your DNS Name [Y/N]: [33m
echo [0m
if /i "%DNS-confirm%"=="y" (
	cls
	echo [94mResolving DNS... [0m
	echo Please Wait...
	timeout /t 3 /nobreak >nul
	cls
	nslookup %Domain%
	pause
	echo.
	echo ------------------------------
	goto DNS-Menu
) else if /i "%DNS-confirm%"=="n" (
	echo Returing to Ping Menu
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	goto DNS-Menu
) else (
	echo This is an Invlaid Option...
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	goto DNS-Menu
)

REM This is the Ping Menu Code
:DNS-Menu
cls
echo.  [92m
echo     _   _   _ 
echo    / \ / \ / \
echo   ( D   N   S )
echo    \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Resolve Another DNS Name
echo [33m 3. [0m Exit

echo.
set /p dns-option=Choose an option: [33m
echo [0m
if /i "%dns-option%"=="1" (
	cls
	goto Menu
) else if /i "%dns-option%"=="2" (
	cls
	goto DNS
) else if /i "%dns-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto DNS-Menu
)

REM This Section is for the Notfication Code
:Notification
cls
echo.   [92m
echo     _   _   _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( N   O   T   I   F   I   C   A   T   I   O   N )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.    [0m
echo [33m 1. [0m Information
echo [33m 2. [0m Warning
echo [33m 3. [0m Error

REM This section handles the process of the options that the user selects
echo.
set /p notifi=Please Select a Notification Type: [33m
echo [0m
if /i "%notifi%"=="1" (
	echo.
	set /p title1=Enter a Title for this Notifcation: [33m
echo [0m
	set /p text1= Enter text for this Notification: [33m
echo [0m
	
	echo.
	set /p notifi-confirm1=Enter any Key to Start your Notification...
	goto Information-notification
	
) else if /i "%notifi%"=="2" (
	echo.
	set /p title2=Enter a Title for this Notifcation: [33m
echo [0m
	set /p text2= Enter text for this Notification: [33m
echo [0m
	
	echo.
	set /p notifi-confirm2=Enter any Key to Start your Notification... 
	goto Warning-notification 
	
) else if /i "%notifi%"=="3" (
	echo.
	set /p title3=Enter a Title for this Notifcation: [33m
echo [0m
	set /p text3= Enter text for this Notification: [33m
echo [0m
	
	echo.
	set /p notifi-confirm3=Enter any Key to Start your Notification...
	goto Error-notification
	)
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Notification-Menu
)


REM this is the code for the Notification Menu
:Notification-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( N   O   T   I   F   I   C   A   T   I   O   N )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Set Another Notification
echo [33m 3. [0m Exit

echo.
set /p notifi-option=Choose an option: [33m
echo [0m
if /i "%notifi-option%"=="1" (
	cls
	goto Menu
) else if /i "%notifi-option%"=="2" (
	cls
	goto Notification
) else if /i "%notifi-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Notification-Menu
)

REM this is the code so start the Information notification
:Information-notification
echo [94mPlease Wait...  [0m
:: Run the PowerShell command in one line
powershell -Command "$title1 = '%title1%'; $text1 = '%text1%'; Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Information; $notify.BalloonTipTitle = $title1; $notify.BalloonTipText = $text1; $notify.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::None; $notify.Visible = $true; $notify.ShowBalloonTip(7000); Start-Sleep -Seconds 7; $notify.Dispose();"
cls
goto Notification-Menu



REM this is the code so start the Warning notification
:Warning-notification
echo [94mPlease Wait...  [0m
:: Run the PowerShell command in one line
powershell -Command "$title1 = '%title2%'; $text1 = '%text2%'; Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Warning; $notify.BalloonTipTitle = $title1; $notify.BalloonTipText = $text1; $notify.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::None; $notify.Visible = $true; $notify.ShowBalloonTip(7000); Start-Sleep -Seconds 7; $notify.Dispose();"
cls
goto Notification-Menu



REM this is the code so start the Error notification
:Error-notification
echo [94mPlease Wait...  [0m
:: Run the PowerShell command in one line
powershell -Command "$title1 = '%title3%'; $text1 = '%text3%'; Add-Type -AssemblyName System.Windows.Forms; Add-Type -AssemblyName System.Drawing; $notify = New-Object System.Windows.Forms.NotifyIcon; $notify.Icon = [System.Drawing.SystemIcons]::Error; $notify.BalloonTipTitle = $title1; $notify.BalloonTipText = $text1; $notify.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::None; $notify.Visible = $true; $notify.ShowBalloonTip(7000); Start-Sleep -Seconds 7; $notify.Dispose();"
cls
goto Notification-Menu


:webpage
cls
echo.  [92m
echo     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \
echo   ( W   E   B   P   A   G   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Open Google
echo [33m 2. [0m Open Youtube
echo [33m 3. [0m Open ChatGPT
echo [33m 4. [0m Amazon
echo [33m 5. [0m Harry Support Services
echo [33m 6. [0m Other

echo.
set /p webpage=Enter an option: [33m
echo [0m
if /i "%webpage%"=="1" (
	goto Google
) else if /i "%webpage%"=="2" (
	goto Youtube
)else if /i "%webpage%"=="3" (
	goto ChatGPT
) else if /i "%webpage%"=="4" (
	goto Amazon
)else if /i "%webpage%"=="5" (
	goto harrysupport
) else if /i "%webpage%"=="6" (
	goto Other
) else (
echo.
echo invalid option
echo [94mPlease Wait...  [0m
timeout /t 3 /nobreak >nul
goto webpage
)

REM This is the Google opening Code
:Google
cls
echo [94mOpening Google... [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:https://www.google.co.uk/
echo.
echo [94mGoogle opened [0m
pause
goto Google-Menu


Rem This is the Google Menu
:Google-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \
echo   ( G   O   O   G   L   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Google Again
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit

echo.
set /p Google-option=Choose an option: [33m
echo [0m
if /i "%Google-option%"=="1" (
	cls
	goto Menu
) else if /i "%Google-option%"=="2" (
	cls
	goto Google
) else if /i "%Google-option%"=="3" (
	goto webpage
) else if /i "%Google-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Google-Menu
)


REM This is the Youtube opening Code
:Youtube
cls
echo [94mOpening Youtube... [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:https://www.youtube.com/
echo.
echo [94mYoutube opened [0m
pause
goto Youtube-Menu

Rem This is the Youtube Menu
:Youtube-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \
echo   ( Y   O   U   T   U   B   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Youtube Again
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit


echo.
set /p Youtube-option=Choose an option: [33m
echo [0m
if /i "%Youtube-option%"=="1" (
	cls
	goto Menu
) else if /i "%Youtube-option%"=="2" (
	cls
	goto Youtube
) else if /i "%Youtube-option%"=="3" (
	goto webpage
) else if /i "%Youtube-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Youtube-Menu
)


REM This is the Chat GPT opening Code
:ChatGPT
cls
echo [94mOpening ChatGPT... [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:https://chatgpt.com/auth/login?sso
echo.
echo [94mChatGPT opened [0m
pause
goto ChatGPT-Menu

Rem This is the ChatGPT Menu
:ChatGPT-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \
echo   ( C   H   A   T   G   P   T )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Youtube Again
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit

echo.
set /p ChatGPT-option=Choose an option: [33m
echo [0m
if /i "%ChatGPT-option%"=="1" (
	cls
	goto Menu
) else if /i "%ChatGPT-option%"=="2" (
	cls
	goto ChatGPT
) else if /i "%ChatGPT-option%"=="3" (
	goto webpage
) else if /i "%ChatGPT-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto ChatGPT-Menu
)

REM This is the Amazon opening Code
:Amazon
cls
echo [94mOpening Amazon... [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:https://www.amazon.com/
echo.
echo [94mAmazon opened [0m
pause
goto Amazon-Menu

Rem This is the Amazon Menu
:Amazon-Menu
cls
echo. [92m
echo     _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \
echo   ( A   M   A   Z   O   N )
echo    \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Amazon Again
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit

echo.
set /p Amazon-option=Choose an option: [33m
echo [0m
if /i "%Amazon-option%"=="1" (
	cls
	goto Menu
) else if /i "%Amazon-option%"=="2" (
	cls
	goto Amazon
) else if /i "%Amazon-option%"=="3" (
	goto webpage
) else if /i "%Amazon-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Amazon-Menu
)



REM This Section opens Harry Support Services
:harrysupport
cls
echo [92m
echo ============================================= [0m
echo    Welcome to Harry Support Services (HSS) [92m
echo ============================================= [0m
echo.

echo [33m 1. [0m HSS public page [94m (Advertise)  [0m
echo [33m 2. [0m HSS private     [94m (main) [0m~ [91mHSS VPN needed  [0m
echo.
set /p HSS-pages=Please choose which HSS Page you would like to open: [33m
echo [0m
if /i "%HSS-pages%"=="1" (
	goto HSS-Public
) else if /i "%HSS-pages%"=="2" (
	goto HSS-Private
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [00m
	Timeout /t 3 /nobreak >nul
	echo.
	goto harrysupport
)


REM This is the github website of Harry Support Services
:HSS-Public
cls
echo [94mOpening HSS Public page...  [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:https://harrysupport.github.io/services/
echo.
echo HSS Public Page opened
pause
goto harrysupport-Menu



REM This is the Main website of Harry Support Services
:HSS-Private
cls
echo [94mOpening HSS Private page...  [0m
echo Please Wait...
timeout /t 3 /nobreak >nul

start microsoft-edge:http://harrysupport.com
echo.
echo HSS Private Page opened
pause
goto harrysupport-Menu



REM this is the code for the harry support services Menu
:harrysupport-Menu
cls
echo.   [92m
echo     _   _   _   _   _     _   _   _   _   _   _   _ 
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( H   A   R   R   Y ) ( S   U   P   P   O   R   T )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Harry Support Services Again
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit

echo.
set /p harrysupport-option=Choose an option: [33m
echo [0m
if /i "%harrysupport-option%"=="1" (
	cls
	goto Menu
) else if /i "%harrysupport-option%"=="2" (
	cls
	goto harrysupport
) else if /i "%harrysupport-option%"=="3" (
	goto webpage
) else if /i "%harrysupport-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto harrysupport-Menu
)

REM This the section to open your own custom web page
:Other
cls
echo.
set /p url=Please Enter the URL you want to Open: 
echo [94mChecking if your URL is Valid...  [0m
echo Opeing URL...
timeout /t 3 /nobreak >nul
start microsoft-edge:%url%
echo.
echo %url% opened
pause
goto Other-Menu

Rem This is the Other Menu
:Other-Menu
echo.  [92m
echo     _   _   _   _   _ 
echo    / \ / \ / \ / \ / \
echo   ( O   T   H   E   R )
echo    \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Another Custom URL
echo [33m 3. [0m Show all Webpage options
echo [33m 4. [0m Exit

echo.
set /p Other-option=Choose an option: [33m
echo [0m
if /i "%Other-option%"=="1" (
	cls
	goto Menu
) else if /i "%Other-option%"=="2" (
	cls
	goto Other
) else if /i "%Other-option%"=="3" (
	goto webpage
) else if /i "%Other-option%"=="4" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Other-Menu
)

REM This is the Anit-virus scan using Windows Defender
:Malware
cls
echo.   [92m
echo     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \
echo   ( M   A   L   W   A   R   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Quick Scan    [94m (5 - 10 Minutes)
echo [33m 2. [0m Full Scan    [94m (30 - 60 Mintues) [0m
echo.
set /p malware-type=Choose the type of scan you want to run: [33m
echo [0m

if /i "%malware-type%"=="1" (
	echo.
    set /p malware-confrim=Press Any Key to Start Malware Scan...
    cls
    echo [94mRunning Quick Scan using Windows Defender... [0m
    cd /d "%ProgramFiles%\Windows Defender"
    MpCmdRun.exe -Scan -ScanType 1
    goto ScanComplete
) else if /i "%malware-type%"=="2" (
	echo.
	set /p malware-confrim=Press Any Key to Start Malware Scan...
    cls
    echo [94mRunning Full Scan using Windows Defender... [0m
    cd /d "%ProgramFiles%\Windows Defender"
    MpCmdRun.exe -Scan -ScanType 2
    goto ScanComplete
) else (
    echo.
    echo This is an incorrect option.
    echo [94mPlease wait... [0m
	Timeout /t 3 /nobreak >nul
    goto Malware-Menu
)
Rem This is the results of the scan
:ScanComplete
cls
echo.
echo The scan has completed.
echo Please check the Windows Defender notification area for the results.
echo.
Timeout /t 8 /nobreak >nul
goto Malware-Menu

Rem This is the malware Menu
:Malware-Menu
cls
echo. [92m
echo     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \
echo   ( M   A   L   W   A   R   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Scan For Malware Again
echo [33m 3. [0m Exit

echo.
set /p Malware-option=Choose an option: [33m
echo [0m
if /i "%Malware-option%"=="1" (
	cls
	goto Menu
) else if /i "%Malware-option%"=="2" (
	cls
	goto Malware
) else if /i "%Malware-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Malware-Menu
)



REM This is the Speed Test Section
:SpeedTest
setlocal

REM Define variables
set "URL=https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-win64.zip"
set "FILENAME=speedtest.zip"
set "EXTRACT_DIR=%TEMP%\speedtest"
set "EXECUTABLE=%EXTRACT_DIR%\speedtest.exe"

REM Check if Speedtest CLI is already in the extraction directory
if exist "%EXECUTABLE%" (
    echo Speedtest CLI is already installed. Running it...
    cd /d "%EXTRACT_DIR%"
    goto :RunSpeedtest
)

REM Prompt user for installation
echo Speedtest CLI is not installed. Do you want to install it now?
echo [33m [Y] [0m Yes
echo [33m [N] [0m No
choice /c YN /m "Select Y for Yes or N for No:"

if errorlevel 2 goto :NoInstall
if errorlevel 1 goto :Install

:Install
REM Download the Speedtest CLI
echo [94mDownloading Speedtest CLI... [0m
powershell -Command "Invoke-WebRequest -Uri %URL% -OutFile %FILENAME%"

REM Create extraction directory
if not exist "%EXTRACT_DIR%" mkdir "%EXTRACT_DIR%"

REM Extract the downloaded ZIP file
echo [94mExtracting Speedtest CLI... [0m
powershell -Command "Expand-Archive -Path %FILENAME% -DestinationPath %EXTRACT_DIR%"

REM Clean up: Delete zip file after extraction
echo [94mCleaning up...  [0m
del "%FILENAME%"



REM Prompt user to press any key to start the speed test
:RunSpeedtest
cls
echo.  [92m
echo     _   _   _   _   _     _   _   _   _
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \
echo   ( S   P   E   E   D ) ( T   E   S   T )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/
echo.  [0m
echo Press any key to start the network speed test...
pause >nul

REM Run Speedtest CLI
echo [94mRunning Speedtest... [0m
%EXECUTABLE%

goto :End

:NoInstall
echo Speedtest CLI will not be installed. Exiting...
goto :End

:End
echo.
echo [94mDone. [0m
set /p continue=Press Any Key To Continue...
goto SpeedTest-Menu
endlocal


Rem This is the speedtest Menu
:SpeedTest-Menu
cls
echo.  [92m
echo     _   _   _   _   _     _   _   _   _
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \
echo   ( S   P   E   E   D ) ( T   E   S   T )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Run Network Speed Test Again
echo [33m 3. [0m Exit

echo.
set /p SpeedTest-option=Choose an option: [33m
echo [0m
if /i "%SpeedTest-option%"=="1" (
	cls
	goto Menu
) else if /i "%SpeedTest-option%"=="2" (
	cls
	goto SpeedTest
) else if /i "%SpeedTest-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto SpeedTest-Menu
)


REM This is the QR Code Section
:QRcode
cls
echo.  [92m
echo     _   _     _   _   _   _ 
echo    / \ / \   / \ / \ / \ / \
echo   ( Q   R ) ( C   O   D   E )
echo    \_/ \_/   \_/ \_/ \_/ \_/
echo.  [0m
set /p QR-URL=Please Enter The URL Here: [33m
echo. [0m
set /p QR-confirm=Please Press any Key to Generate QR Code...
echo.
echo [94mGenerating QR Code... [0m
echo Please Wait...
Timeout /t 3 /nobreak >nul
echo.
curl qrenco.de/%QR-URL%



echo.
set /p QR-continue=Please Press Any Key To Continue...
goto QR-Menu


Rem This is the QR Code Menu
:QR-Menu
cls
echo.  [92m
echo     _   _     _   _   _   _ 
echo    / \ / \   / \ / \ / \ / \
echo   ( Q   R ) ( C   O   D   E )
echo    \_/ \_/   \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Generate Another QR Code
echo [33m 3. [0m Exit

echo.
set /p QR-option=Choose an option: [33m
echo [0m
if /i "%QR-option%"=="1" (
	cls
	goto Menu
) else if /i "%QR-option%"=="2" (
	cls
	goto QRcode
) else if /i "%QR-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto QR-Menu
)


REM This is the WiFi Section
:WIFI
cls
echo.  [92m
echo     _   _   _   _   
echo    / \ / \ / \ / \
echo   ( W   i   F   i )
echo    \_/ \_/ \_/ \_/
echo.  [0m
set /p wifi-start=Press any Key to start...
echo.
netsh wlan show profiles
echo.
set /p wifi-network=Please Select a Network: [33m
echo. [0m
set /p wifi-password=Press Any Key to Get Wifi Password...
echo.
cls
netsh wlan show profile %wifi-network% key=clear
set /p wifi-continue=Press Any Key to Continue...
goto WIFI-Menu


Rem This is the WiFi Menu
:WIFI-Menu
cls
echo.  [92m
echo     _   _   _   _   
echo    / \ / \ / \ / \
echo   ( W   i   F   i )
echo    \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Get another Wifi Password
echo [33m 3. [0m Exit

echo.
set /p wifi-option=Choose an option: [33m
echo [0m
if /i "%wifi-option%"=="1" (
	cls
	goto Menu
) else if /i "%wifi-option%"=="2" (
	cls
	goto WIFI
) else if /i "%wifi-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto WIFI-Menu
)



REM This is the System Peformance Section
:SystemPeformance
cls
echo.  [92m
echo     _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( S   Y   S   T   E   M ) ( P   E   F   O   R   M   A   N   C   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
set /p system-start=Press Any Key to Start System Performance... 
echo.
echo [92m =========================== [0m
echo  System Performance Report
echo [92m =========================== [0m
echo.

:: CPU Usage
echo [94m CPU Information: [0m
wmic cpu get caption, deviceid, loadpercentage
echo.

:: Memory Usage (Simplified)
echo [94m Memory Information: [0m
wmic OS get TotalVisibleMemorySize,FreePhysicalMemory /format:value
echo.

:: Additional System Info (optional)
echo [94m Additional System Information: [0m
systeminfo | findstr /C:"Total Physical Memory" /C:"Available Physical Memory"
echo.
echo.
pause
goto SystemPeformance-Menu


Rem This is the System Performance Menu
:SystemPeformance-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( S   Y   S   T   E   M ) ( P   E   F   O   R   M   A   N   C   E )
echo    \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0mMain Menu
echo [33m 2. [0mRun System Performance again
echo [33m 3. [0mExit

echo.
set /p system-option=Choose an option: [33m
echo [0m
if /i "%system-option%"=="1" (
	cls
	goto Menu
) else if /i "%system-option%"=="2" (
	cls
	goto SystemPeformance
) else if /i "%system-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto SystemPeformance-Menu
)





REM This is the Port Scan Section
:PortScan
cls
echo.
echo [91m DISCLAIMER [0m ~ THIS TOOL IS INTENDED FOR USE ONLY WITH EXPLICT PERMSSION. 
echo              UNAUTHORISED USE MAY CONSTITUTE ILLEGAL ACTIVITY.
echo.
echo.  [92m
echo     _   _   _   _     _   _   _   _
echo    / \ / \ / \ / \   / \ / \ / \ / \
echo   ( P   O   R   T ) ( S   C   A   N )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/
echo.  [0m
set /p scan-start=Press Any key to start Port scan... [33m
echo [0m
echo.
set /p IPaddress=Enter an IP Address: [33m
echo [0m
set /p Port=Enter a port number: [33m
echo [0m
echo.
echo THANK YOU! Here are your Details:
echo.
echo [92m +----------------------+
echo [0m IPv4= [33m %IPaddress%
echo [92m +----------------------+
echo [0m Port= [33m %Port%
echo [92m +----------------------+
echo. [0m

:Details
echo [33m 1. [0m Confirm Details
echo [33m 2. [0m Change Details
echo.
set /p portscan-confirm=Enter Option: [33m
echo [0m
if /i "%portscan-confirm%"=="1" (
    goto testconnection
) else if /i "%portscan-confirm%"=="2" ( 
    goto PortScan
) else (
    echo.
    echo Invalid option.
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo. 
    goto Details
)


REM This is the Test connection of the IP and the Port Section
:testconnection
cls
REM Execute PowerShell commands inline with Execution Policy Bypass
powershell -NoProfile -ExecutionPolicy Bypass -Command "$IpAddress = '%IPaddress%'; $Port = %Port%; Write-Host 'Testing connection to' $IpAddress 'on port' $Port; Test-NetConnection -ComputerName $IpAddress -Port $Port"

REM Pause to keep the window open
pause



REM This is the Port Scan Menu
:PortScan-Menu
cls
echo.  92m
echo     _   _   _   _     _   _   _   _
echo    / \ / \ / \ / \   / \ / \ / \ / \
echo   ( P   O   R   T ) ( S   C   A   N )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Start Another Port Scan
echo [33m 3. [0m Exit

echo.
set /p portscan-option=Choose an option: [33m
echo [0m
if /i "%portscan-option%"=="1" (
	cls
	goto Menu
) else if /i "%portscan-option%"=="2" (
	cls
	goto PortScan
) else if /i "%portscan-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto PortScan-Menu
)

REM This is the network configuration Section
:NetworkConfig
cls
echo.   [92m
echo     _   _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( N   E   T   W   O   R   K ) ( C   O   N   F   I   G   U   R   A   T   I   O   N )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Basic Network Configuration
echo [33m 2. [0m Advanced Network Configuration
echo.
set /p network-conf=Choose an Option: [33m
echo [0m
if /i "%network-conf%"=="1" (
		set /p network-start1=Press Any Key To Start...
		cls
		ipconfig
		echo.
		set /p network-continue1=Press Any Key To Continue...
		goto NetworkConfig-Menu
) else if /i "%network-conf%"=="2" (
		set /p network-start2=Press Any Key To Start...
		cls
		ipconfig /all
		echo.
		set /p network-continue2=Press Any Key To Continue...
		goto NetworkConfig-Menu
) else (
	echo This is an Invalid Option...
	echo [94mPlease Wait... [0m
	Timeout /t 3 /nobreak >nul
	goto NetworkConfig-Menu
)

REM This is the network configuration Menu
:NetworkConfig-Menu
cls
echo.  [92m
echo     _   _   _   _   _   _   _     _   _   _   _   _   _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo   ( N   E   T   W   O   R   K ) ( C   O   N   F   I   G   U   R   A   T   I   O   N )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.   [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Run Network Configuration again
echo [33m 3. [0m Exit

echo.
set /p network-option=Choose an option: [33m
echo [0m
if /i "%network-option%"=="1" (
	cls
	goto Menu
) else if /i "%network-option%"=="2" (
	cls
	goto NetworkConfig
) else if /i "%network-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto NetworkConfig-Menu
)


REM This is the Renew/Release IP Address Section
:renew-rel-IP
cls
echo. [92m
echo     _   _   _   _   _     _     _   _   _   _   _   _   _     _   _     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \   / \   / \ / \ / \ / \ / \ / \ / \   / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( R   E   N   E   W ) ( / ) ( R   E   L   E   A   S   E ) ( I   P ) ( A   D   D   R   E   S   S )
echo    \_/ \_/ \_/ \_/ \_/   \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Renew IP Address
echo [33m 2. [0m Release IP Address

echo.
set /p ren-rel-IP=Choose an option: [33m
echo [0m
if /i "%ren-rel-IP%"=="1" (
	cls
	set /p ren-rel-IP-start1=Press Any Key To Release IP Address...
	echo.
	ipconfig /renew
	echo.
	set /p ren-rel-IP-continue1=Press Any Key To Continue...
	goto renew-rel-IP-Menu
) else if /i "%ren-rel-IP%"=="2" (
	cls
	set /p ren-rel-IP-start2=Press Any Key To Renew IP Address...
	echo.
	ipconfig /release
	echo.
	set /p ren-rel-IP-continue2=Press Any Key To Continue...
	goto renew-rel-IP-Menu
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto renew-rel-IP-Menu
)



REM This is the Renew/Release IP Address Menu
:renew-rel-IP-Menu
cls
echo.  [92m
echo     _   _   _   _   _     _     _   _   _   _   _   _   _     _   _     _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \   / \   / \ / \ / \ / \ / \ / \ / \   / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( R   E   N   E   W ) ( / ) ( R   E   L   E   A   S   E ) ( I   P ) ( A   D   D   R   E   S   S )
echo    \_/ \_/ \_/ \_/ \_/   \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/   \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Run Renew/Release IP Address again
echo [33m 3. [0m Exit
echo.
set /p renew-rel-IP-option=Choose an option: [33m
echo [0m
if /i "%renew-rel-IP-option%"=="1" (
	cls
	goto Menu
) else if /i "%renew-rel-IP-option%"=="2" (
	cls
	goto renew-rel-IP
) else if /i "%renew-rel-IP-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto renew-rel-IP-Menu
)

REM This is the Check Windows Updates Section
:Updates
cls
echo.
echo [91m DISCLAIMER [0m ~ YOU WILL NEED TO RUN THIS IN ADMINISTATOR MODE FOR IT TO WORK.  
echo. [92m
echo     _   _   _   _   _     _   _   _      _   _   _   _   _   _   _  
echo    / \ / \ / \ / \ / \   / \ / \ / \    / \ / \ / \ / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( F   O   R )  ( U   P   D   A   T   E   S )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/    \_/ \_/ \_/ \_/ \_/ \_/ \_/ 
echo. [0m
echo.
:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
	echo.
    pause
    goto Updates-Menu
)
set /p update-start= Press Any Key to Check for Updates...
echo [94mPlease Wait... [0m
echo.
echo [94m Checking for Windows updates... [0m
powershell -Command "Install-Module -Name PSWindowsUpdate -Force -SkipPublisherCheck -Scope CurrentUser; Import-Module PSWindowsUpdate; $updates = Get-WindowsUpdate -AcceptAll -Confirm; if (!$updates) { Write-Host 'No updates required.' } else { Install-WindowsUpdate -Confirm:$true -Verbose; if ($updates | Where-Object { $_.RebootRequired }) { Restart-Computer -Confirm:$true } }"
echo.
pause
goto Updates-Menu

REM This is the Check Windows Updates Menu
:Updates-Menu
cls
echo. [92m
echo     _   _   _   _   _     _   _   _      _   _   _   _   _   _   _  
echo    / \ / \ / \ / \ / \   / \ / \ / \    / \ / \ / \ / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( F   O   R )  ( U   P   D   A   T   E   S )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/    \_/ \_/ \_/ \_/ \_/ \_/ \_/ 
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Check For Updates again
echo [33m 3. [0m Exit
echo.
set /p update-option=Choose an option: [33m
echo [0m
if /i "%update-option%"=="1" (
	cls
	goto Menu
) else if /i "%update-option%"=="2" (
	cls
	goto Updates
) else if /i "%update-option%"=="3" (
	goto Exit
) else (
	echo.
	echo This is an Incorrect option
	echo [94mPlease Wait... [94m
	Timeout /t 3 /nobreak >nul
	echo.
	goto Updates-Menu
)




:Disk
cls
echo.
echo [91m DISCLAIMER [0m ~ YOU WILL NEED TO RUN THIS IN ADMINISTRATOR MODE FOR IT TO WORK.  
echo.  [92m
echo     _   _   _   _   _     _   _   _   _  
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( D   I   S   K )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 
echo.  
echo.   [0m

:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto Disk-Menu
)

echo [33m 1. [0m Check Disk Only (No Repairs)
echo [33m 2. [0m Check Disk with Automatic Repairs
echo.
set /p disk-choice=Choose an Option: [33m
echo [0m
if /i "%disk-choice%"=="1" (
    goto Disk1
) else if /i "%disk-choice%"=="2" (
    goto Disk2
) else (
    echo This is an Invalid Option...
    echo.
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    goto Disk
)


REM This is checking disk with no repairs and option for C drive or custom drive section
:Disk1
cls
echo. [92m
echo ===================================== [0m
echo SECTION: Check Disk Only (No Repairs) [92m 
echo =====================================
echo. [0m
echo [33m 1. [0m Check the 'C' Drive (Local Disk)
echo [33m 2. [0m Choose Custom Drive
echo.
set /p custom-choice=Choose an Option: [33m
echo [0m
if /i "%custom-choice%"=="1" (
	goto C-Drive
) else if /i "%custom-choice%"=="2" (
	goto Any-Drive
) else (
	echo invalid option...
	echo.
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	goto Disk-Menu
)

REM This is checking disk with no repairs and C drive section
:C-Drive
cls
echo. [92m
echo ====================================== [0m
echo SECTION: Check Disk Only (No Repairs) [92m 
echo ====================================== [0m
echo TYPE: Check the 'C' Drive (Local Disk) [92m 
echo ======================================
echo. [0m
set /p C-Drive-start=Press Any Key to Start Check Disk...
echo.
echo [94m Please Wait...  [0m
chkdsk C:
echo.
set /p C-Drive-end=Press Any Key to Continue...
goto Disk-Menu


REM This is checking disk with no repairs and custom drive section
:Any-Drive
cls
echo. [92m
echo ===================================== [0m
echo SECTION: Check Disk Only (No Repairs) [92m 
echo ===================================== [0m
echo TYPE: Check a Custom Drive [92m
echo ==========================
echo. [0m 
set /p custom-drive=Enter the Letter of the drive you wish to check (e.g., D): [33m
echo. [0m
cls
echo. [92m
echo ====================================== [0m
echo SECTION: Check Disk Only (No Repairs) [92m
echo ====================================== [0m
echo TYPE: Check the '%custom-drive%' Drive [92m 
echo ======================================
echo. [0m
set /p Any-Drive-start=Press Any Key to Start Check Disk...
echo.
echo [94m Please Wait...  [0m
echo.
chkdsk %custom-drive%:
echo.
set /p Any-Drive-end=Press Any Key to Continue...
goto Disk-Menu


REM This is checking disk with automatic repairs and option for C drive or custom drive section
:Disk2
cls
echo. [92m
echo ========================================== [0m
echo SECTION: Check Disk With Automatic Repairs [92m 
echo ==========================================
echo. [0m
echo [33m 1. [0m Check the 'C' Drive (Local Disk)
echo [33m 2. [0m Choose Custom Drive
echo.
set /p disk-custom-choice=Choose an Option: [33m
echo [0m
if /i "%disk-custom-choice%"=="1" (
	goto C-Drive2
) else if /i "%disk-custom-choice%"=="2" (
	goto Any-Drive2
) else (
	echo invalid option...
	echo.
	echo [94m Please Wait...  [0m
	Timeout /t 3 /nobreak >nul
	goto Disk-Menu
)


REM This is checking disk with automatic repairs section
:C-Drive2
cls
echo. [92m
echo ========================================== [0m
echo SECTION: Check Disk With Automatic Repairs [92m 
echo ========================================== [0m
echo TYPE: Check the 'C' Drive (Local Disk) [92m 
echo ======================================
echo. [0m
set /p C-Drive2-start=Press Any Key to Start Check Disk...
echo.
echo [94m Please Wait...  [0m
echo.
chkdsk C: /f
echo.
set /p C-Drive-end2=Press Any Key to Continue...
goto Disk-Menu


REM This is checking disk with automatic repairs  and custom drive section
:Any-Drive2
cls
echo.[92m
echo ========================================== [0m
echo SECTION: Check Disk With Automatic Repairs [92m 
echo ========================================== [0m
echo TYPE: Check a Custom Drive [92m 
echo ==========================
echo. [0m
set /p custom-drive2=Enter the Letter of the drive you wish to check (e.g., D): [33m
echo. [0m
cls
echo. [92m
echo ========================================== [0m
echo SECTION: Check Disk With Automatic Repairs [92m 
echo ========================================== [0m
echo TYPE: Check the '%custom-drive2%' Drive [92m 
echo =======================================
echo. [0m
set /p Any-Drive2-start=Press Any Key to Start Check Disk...
echo.
echo [0m Please Wait...  [0m
echo.
chkdsk %custom-drive2%: /f
echo.
set /p Any-Drive2-end=Press Any Key to Continue...
goto Disk-Menu




REM This is the Check Disk Menu
:Disk-Menu
cls
echo. [92m
echo     _   _   _   _   _     _   _   _   _  
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( D   I   S   K )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ 
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Check Disk Again
echo [33m 3. [0m Exit
echo.
set /p chkdsk-option=Choose an option: [33m
echo [0m
if /i "%chkdsk-option%"=="1" (
    cls
    goto Menu
) else if /i "%chkdsk-option%"=="2" (
    cls
    goto Disk
) else if /i "%chkdsk-option%"=="3" (
    goto Exit
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto Disk-Menu
)

REM This is the Check Disk Space Section
:Disk-Space
cls
echo.
echo [91m DISCLAIMER [0m ~ YOU WILL NEED TO RUN THIS IN ADMINISTRATOR MODE FOR IT TO WORK.  
echo. [92m
echo     _   _   _   _   _     _   _   _   _     _   _   _   _   _
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \   / \ / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( D   I   S   K ) ( S   P   A   C   E )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/
echo.  [0m

:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto Disk-Menu
)

echo [33m 1. [0m Check Disk Space on the 'C' Drive (Local Disk)
echo [33m 2. [0m Check Disk Space on Custom Drive (e.g., D):
echo.
set /p Disk-Space-choice=Choose an Option: [33m
echo [0m
if /i "%Disk-Space-choice%"=="1" (
	goto C-Disk-Space
) else if /i "%Disk-Space-choice%"=="2" (
	goto Any-Disk-Space
) else (
	echo.
	echo This is an Invaild Choice...
	echo.
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	goto Disk-Space
)


REM This is the Check Disk Space Section for the C drive (Local Drive)
:C-Disk-Space
cls
echo. [92m
echo ========================= [0m
echo SECTION: Check Disk Space [92m
echo ========================= [0m
echo TYPE: Check 'C' Drive [92m
echo ===================== [0m
echo.
set /p Disk-Space-Start=Press Any Key to Check Disk Space...
echo.
echo [94mPlease Wait...  [0m
Timeout /t 3 /nobreak >nul

cls
echo. [92m
echo ==================== [0m
echo  DISK SPACE CHECKED [92m
echo ==================== [0m
echo.

:: Display free space using fsutil
fsutil volume diskfree C:
echo.
pause
goto Disk-Space-Menu


REM This is the Check Disk Space Section for Custom Drive
:Any-Disk-Space
cls
echo. [92m
echo ========================= [0m
echo SECTION: Check Disk Space [92m
echo ========================= [0m
echo.
set /p space-letter=Enter the Letter of the drive you wish to check (e.g., D): [33m
echo [0m
cls
echo. [92m
echo ========================= [0m
echo SECTION: Check Disk Space [92m
echo ========================= [0m
echo TYPE: Check '%space-letter%' Drive [92m
echo ===================== [0m
echo.
echo.
set /p custom-Disk-Space-Start=Press Any Key to Check Disk Space...
echo.
echo [94m Please Wait...  [0m
Timeout /t 3 /nobreak >nul
cls
echo. [92m
echo ================== [0m
echo  DISK SPACE CHECK [92m
echo ================== [0m
echo.

:: Display free space using fsutil
fsutil volume diskfree %space-letter%:
echo.
pause
goto Disk-Space-Menu



REM This is the Check Disk Space Menu
:Disk-Space-Menu
cls
echo. [92m
echo     _   _   _   _   _     _   _   _   _     _   _   _   _   _
echo    / \ / \ / \ / \ / \   / \ / \ / \ / \   / \ / \ / \ / \ / \
echo   ( C   H   E   C   K ) ( D   I   S   K ) ( S   P   A   C   E )
echo    \_/ \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Check Disk Space Again
echo [33m 3. [0m Exit
echo.
set /p chkdsk-option=Choose an option: [33m
echo [0m
if /i "%chkdsk-option%"=="1" (
    cls
    goto Menu
) else if /i "%chkdsk-option%"=="2" (
    cls
    goto Disk-Space
) else if /i "%chkdsk-option%"=="3" (
    goto Exit
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto Disk-Space-Menu
)


:TaskManager
cls
echo.  [92m
echo     _   _   _   _       _     _   _   _   _   _ 
echo    / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( T   A   S   K ) ( M   A   N   A   G   E   R )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.
echo. [0m
set /p Task-Start=Press Any Key To Open Task Manager...
:: Open Task Manager
start taskmgr
echo.
echo [94mTask Manager opened [0m
pause
goto TaskManager-Menu


:TaskManager-Menu
cls
echo. [92m
echo     _   _   _   _       _     _   _   _   _   _ 
echo    / \ / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( T   A   S   K ) ( M   A   N   A   G   E   R )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Open Task Manager Again
echo [33m 3. [0m Exit
echo.
set /p Task-option=Choose an option: [33m
echo [0m
if /i "%Task-option%"=="1" (
    cls
    goto Menu
) else if /i "%Task-option%"=="2" (
    cls
    goto TaskManager
) else if /i "%Task-option%"=="3" (
    goto Exit
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto TaskManager-Menu
)






:Firewall
cls
echo [92m
echo ======================================== [0m
echo         WINDOWS FIREWALL MANAGER [92m
echo ======================================== [0m
echo.
echo [33m 1. [0m Check Firewall Status
echo [33m 2. [0m Turn Firewall ON
echo [33m 3. [0m Turn Firewall OFF
echo [33m 4. [0m Exit
echo.
set /p Firewall-choice=Choose an option (1-4): [33m
echo [0m

if "%Firewall-choice%"=="1" goto Firewall-check_status
if "%Firewall-choice%"=="2" goto turn_on
if "%Firewall-choice%"=="3" goto turn_off
if "%Firewall-choice%"=="4" goto Menu

:: If no valid option was selected, show error
echo.
echo This is an Incorrect Option
echo [94mPlease Wait... [0m
Timeout /t 3 /nobreak >nul
goto Firewall

:Firewall-check_status
cls
echo [94mChecking Windows Firewall status... [0m
echo.
netsh advfirewall show allprofiles state
echo.
pause
goto Firewall-Menu

:turn_on
cls
echo.
:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto Firewall
)
echo [94mTurning on the Windows Firewall... [0m
netsh advfirewall set allprofiles state on
echo.
echo Firewall is now ON.
echo.
pause
goto menu

:turn_off
cls
echo.
:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto Firewall
)
echo [94mTurning off the Windows Firewall... [0m
netsh advfirewall set allprofiles state off
echo.
echo Firewall is now OFF.
echo.
pause
goto Firewall-Menu


:Firewall-Menu
cls
echo. [92m
echo     _   _   _   _   _   _   _   _
echo    / \ / \ / \ / \ / \ / \ / \ / \
echo   ( F   I   R   E   W   A   L   L )
echo    \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Show Firewall Settings Again
echo [33m 3. [0m Exit
echo.
set /p firewall-option=Choose an option: [33m
echo [0m
if /i "%firewall-option%"=="1" (
    cls
    goto Menu
) else if /i "%firewall-option%"=="2" (
    cls
    goto Firewall
) else if /i "%firewall-option%"=="3" (
    goto Exit
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait... [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto Firewall-Menu
)


:MAC
cls
echo. [92m
echo     _   _   _     _   _   _   _   _   _   _
echo    / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( M   A   C ) ( A   D   D   R   E   S   S )
echo    \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ 
echo.
echo. [0m
set /p mac-Start=Press Any Key To show Mac Address...
cls

echo. [92m
echo ============= [0m
echo  MAC ADDRESS [92m
echo ============= [0m
getmac /v
echo.
pause
goto MAC-Menu


:MAC-Menu
cls
echo. [92m
echo     _   _   _     _   _   _   _   _   _   _
echo    / \ / \ / \   / \ / \ / \ / \ / \ / \ / \
echo   ( M   A   C ) ( A   D   D   R   E   S   S )
echo    \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ \_/ 
echo. [0m
echo [33m 1. [0m Main Menu
echo [33m 2. [0m Show Mac Address Again
echo [33m 3. [0m Exit
echo.
set /p mac-option=Choose an option: [33m
echo [0m
if /i "%mac-option%"=="1" (
    cls
    goto Menu
) else if /i "%mac-option%"=="2" (
    cls
    goto MAC
) else if /i "%mac-option%"=="3" (
    goto Exit
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto MAC-Menu
)


:USER
cls
echo.
echo  [92m 
echo     _   _   _   _   _
echo    / \ / \ / \ / \ / \
echo   ( U   S   E   R   S )
echo    \_/ \_/ \_/ \_/ \_/
echo. [0m
echo  [33m1. [0mView Users
echo  [33m2. [0mAdd User
echo  [33m3. [0mEdit User
echo  [33m4. [0mRemove User
echo.
set /p choice=Enter an Option (1-4): [33m
echo [0m

if /i "%choice%"=="1" (
	goto VIEW-USERS
) else if /i "%choice%"=="2" (
	goto ADD-USER
) else if /i "%choice%"=="3" (
	goto EDIT-USER
) else if /i "%choice%"=="4" (
	goto REMOVE-USER
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto USER
)


:USER-MENU
cls
echo.
echo  [92m
echo     _   _   _   _   _
echo    / \ / \ / \ / \ / \
echo   ( U   S   E   R   S )
echo    \_/ \_/ \_/ \_/ \_/
echo.  [0m
echo  [33m1. [0mMain Menu
echo  [33m2. [0mRun Users Again
echo  [33m3. [0mExit

echo.
set /p users-option=Choose an option (1-3): [33m
echo  [0m
if /i "%users-option%"=="1" (
	cls
	goto Menu
) else if /i "%users-option%"=="2" (
	cls
	goto USER
) else if /i "%users-option%"=="3" (
	goto Exit
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto USER-MENU
)


:VIEW-USERS
cls
echo.  [92m
echo =======================
echo       View Users
echo =======================
echo  [0m
net user
echo.

set /p view-user-details=View More Details on a User (Y/N): [33m
echo  [0m

if /i "%view-user-details%"=="Y" (
	goto VIEW-USERS-INFO
) else if /i "%view-user-details%"=="N" (
	goto USER-MENU
) else (
	echo This is an Incorrect option
	echo [94mPlease Wait...  [0m
	Timeout /t 3 /nobreak >nul
	echo.
	goto VIEW-USERS
)

pause
goto USER-MENU


:VIEW-USERS-INFO
set detailed-username=
set /p detailedusername=Enter Username: [33m
echo. [0m

net user %detailedusername%
echo.
pause
goto USER-MENU


:ADD-USER
cls
echo.  [92m
echo =======================
echo      Add User
echo =======================
echo.  [0m

:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto USER-MENU
)

net user
echo.

set /p username=Enter a new username: [33m
echo  [0m
set /p password=Create a password: [33m
echo  [0m
set /p re-password="Re-enter password: [33m
echo [0m

if /i "%password%"=="%re-password%" (
	set final-password=%password%
	goto ADD-USER-MENU
) else (
	echo.
	echo Password Does Not Match
	echo Please Try Again
	echo [94mPlease Wait...  [0m
	timeout /t 3 /nobreak >nul
	echo.
	goto ADD-USER
)

:ADD-USER-MENU
echo.
echo [33m1. [0mAdministrator Account
echo [33m2. [0mUser Account
echo.
set /p account-type=Enter account type (1-2): [33m
echo  [0m

if /i "%account-type%"=="1" (
	set account-type-selected=Administrator
	goto ADD-USER-CONFIRM
) else if /i "%account-type%"=="2" (
    set account-type-selected=User
	goto ADD-USER-CONFIRM
) else (
	echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto ADD-USER-TYPE
	
)
echo.
pause
goto USER-MENU


:ADD-USER-TYPE
cls
echo.  [92m
echo ===========================
echo    Add User Account Type
echo ===========================
echo  [0m

echo.
echo [33m1. [0mAdministrator Account
echo [33m2. [0mUser Account
echo.
set /p account-type=Enter account type (1-2): [33m
echo  [0m

if /i "%account-type%"=="1" (
    set account-type-selected=Administrator
	goto ADD-USER-CONFIRM
) else if /i "%account-type%"=="2" (
    set account-type-selected=User
	goto ADD-USER-CONFIRM
) else (
	echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto ADD-USER-TYPE
	
)
echo.
echo.
pause
goto USER-MENU



:ADD-USER-CONFIRM
cls
echo.  [92m
echo =================================
echo     Confirm New User Account
echo =================================
echo.  [0m
echo [33mUsername: [0m%username%
echo [33mPassword: [0m%final-password%
echo [33mAccount Type: [0m%account-type-selected%
echo.
set /p user-confrim-choice=Confirm New User Details (Y/N): [33m
echo [0m

if /i "%user-confrim-choice%"=="Y" (

	if /i "%account-type%"=="1" (
		net user %username% %final-password% /add
		net localgroup Administrators %username% /add
		echo User %username% added as Administrator.
	) else if /i "%account-type%"=="2" (
		net user %username% %final-password% /add
		echo User %username% added as Standard User.
	) else (
		echo.
		echo This is an Incorrect Option
		echo [924Please Wait...  [0m
		Timeout /t 3 /nobreak >nul
		echo.
		goto ADD-USER-TYPE
		
	)
	echo.
	pause
	goto USER-MENU
	
	
) else if /i "%user-confrim-choice%"=="N" (
	echo.
	echo Cancelling New Account...
	echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto USER-MENU
) else (
	echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto ADD-USER-CONFIRM
)


:EDIT-USER
cls
echo.  [92m
echo =================
echo     Edit User
echo =================
echo.  [0m

:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto USER-MENU
)

net user
echo.

set /p username=Enter username to edit: [33m
echo. [0m

net user %username% >nul 2>&1
if %errorlevel% equ 0 (
    echo User [94m%username%[0m exists.
	echo.
) else (
    echo User [94m%username%[0m does not exist
	echo.
	echo [94mPlease Wait... [0m
    Timeout /t 3 /nobreak >nul
	goto EDIT-USER
)
echo Choose Edit Action for [94m%username%[0m:
echo [33m1. [0mChange Account Type
echo [33m2. [0mChange Password
echo.
set /p edit-action=Enter choice (1-2): [33m
echo  [0m

if "%edit-action%"=="1" (
    goto EDIT-USER-ACCOUNT-TYPE

) else if "%edit-action%"=="2" (
    goto EDIT-USER-ACCOUNT-PASS
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto EDIT-USER
)

pause
goto USER-MENU


:EDIT-USER-ACCOUNT-TYPE
cls
echo.  [92m
echo ==============================
echo     Edit User Account Type
echo ==============================
echo.  [0m
echo Choose Account Type for [94m%username%[0m:
echo [33m1. [0mAdministrator
echo [33m2. [0mUser
echo [33m3. [0m^<^< Back
echo.
set /p edit-action-type=Enter an Option (1-3): [33m
echo [0m

if "%edit-action-type%"=="1" (
    net localgroup Administrators %username% /add
    net localgroup Users %username% /delete
	echo.
    echo User %username% Updated Account Type to Administrator.
) else if "%edit-action-type%"=="2" (
    net localgroup Users %username% /add
    net localgroup Administrators %username% /delete
	echo.
    echo User %username% Updated Account Type to Standard User.
) else if "%edit-action-type%"=="3" (
    goto EDIT-USER
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto EDIT-USER-ACCOUNT-TYPE
)

pause
goto USER-MENU


:EDIT-USER-ACCOUNT-PASS
cls
echo.  [92m
echo ==================================
echo     Edit User Account Password
echo ==================================
echo.  [0m
echo Choose Action for [94m%username%[0m
echo [33m1. [0mContinue
echo [33m2. [0m^<^< Back
echo.
set /p edit-action-pass=Enter an Option (1-2): [33m
echo [0m

if "%edit-action-pass%"=="1" (
    set /p first-update-user-pass=Enter New Password: [33m
	echo  [0m
    set /p Second-update-user-pass=Re-enter New Password: [33m
	echo  [0m
	goto CHECK-USER-NEW-PASS

  
) else if "%edit-action-pass%"=="2" (
        goto EDIT-USER
) else (
    echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    timeout /t 3 /nobreak >nul
    goto EDIT-USER-ACCOUNT-PASS
    
)

:CHECK-USER-NEW-PASS
if "%first-update-user-pass%"=="%Second-update-user-pass%" (
        set final-update-user-pass=%first-update-user-pass%
        net user %username% %final-update-user-pass% /y >nul 2>&1
        echo.
        echo Password Successfully Changed
        pause
        goto USER-MENU
    ) else (
        echo.
        echo Passwords Do Not Match
        echo Please Try Again
        echo [94mPlease Wait...  [0m
        timeout /t 3 /nobreak >nul
        goto EDIT-USER-ACCOUNT-PASS
    )


:REMOVE-USER
cls
echo.  [92m
echo ===================
echo     Remove User
echo ===================
echo.  [0m

:: Check if the script is running as administrator
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This action cannot be completed. Please run this script as an administrator.
    echo.
    pause
    goto USER-MENU
)

net user
echo.

set /p username=Enter username to remove: [33m
echo. [0m
echo [91m~ Disclaimer ~  [0m
echo Are you Sure you want to Remove this Account!
echo Doing this Action Cannot be undone!
echo.
set /p delete-confrim=Confrim Removal of [94m%username% [0m(Y/N): [33m
echo  [0m

if /i "%delete-confrim%"=="Y" (
	net user %username% /delete
	echo User %username% removed successfully!
	echo.
	pause
	goto USER-MENU
) else if /i "%delete-confrim%"=="N" (
	echo.
	echo Cancelling Account Removal...
	echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto USER-MENU
) else (
	echo.
    echo This is an Incorrect Option
    echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
    echo.
    goto REMOVE-USER
)


setlocal enabledelayedexpansion
:FTP
cls
echo. [92m
echo     _   _   _   _     _   _   _   _   _   _
echo    / \ / \ / \ / \   / \ / \ / \ / \ / \ / \
echo   ( F   I   L   E ) ( S   E   R   V   E   R )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ 
echo. [0m

:: Find the local IPv4 address
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4 Address"') do set IP=%%a
set IP=%IP:~1%

:: Ask the user for the folder or file to share
echo [91mDISCLAIMER[0m ~ Users Accessing File Server only have Read/Download Permissions
echo.
set /p SHARE_PATH=Enter the full path of the file or folder to share: [33m
echo [0m

:: Verify the path exists
if not exist "%SHARE_PATH%" (
	echo.
    echo ERROR: The specified path does not exist.
	echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
	goto FTP
    
)

:: Change to the selected directory
cd /d "%SHARE_PATH%"

:: Set the server port
set PORT=8080

goto FTP-config

:FTP-config

:: Menu for sharing options
echo.
echo [92m===========================================  [0m
echo  Choose how to share your files:
echo  [33m1. [0mLocal Network
echo  [33m2. [0mPublic (Internet)
echo  [33m3. [0mReturn to Main Menu
echo [92m=========================================== [0m
set /p CHOICE=Enter an Option (1-3): [33m
echo [0m

if "%CHOICE%"=="1" (
    echo.
    echo Sharing on Local Network...
    echo  Access it on: http://%IP%:%PORT%
    echo  Sharing: %SHARE_PATH%
    echo [92m=========================================== [0m
    start /b python -m http.server %PORT%
    call :WaitForUser
) else if "%CHOICE%"=="2" (
    echo.
    echo Sharing File Publicly to Internet...
    start /b python -m http.server %PORT%
    timeout /t 3 >nul
    start /b cmd /c "ssh -R 80:localhost:%PORT% serveo.net"
    echo [92m=========================================== [0m
    echo  Your public link will be provided.
    echo  Copy URL to Access File Server.
    echo [92m=========================================== [0m
    call :WaitForUser
) else if "%CHOICE%"=="3" (
	echo.
    echo Returing to Main Menu
	echo [94mPlease Wait...  [0m
    Timeout /t 3 /nobreak >nul
	goto Menu
	
) else (
    echo This is an Incorrect Option
    echo [94mPlease Wait... [0m
    Timeout /t 3 /nobreak >nul
    cls
    goto FTP-config
)

:endlocal
goto FTP-Menu

:WaitForUser
:: Wait for user input to stop the server
echo.
echo Enter '[94mquit[0m' to stop the File Server.
echo.

set /p userinput=

if /i "%userinput%"=="quit" (
	echo.
    echo Stopping the server...
	 Timeout /t 2 /nobreak >nul
    :: Find the Python process and terminate it
    for /f "tokens=2" %%i in ('tasklist ^| findstr "python"') do taskkill /f /pid %%i >nul
	echo Server stopped
	echo [94mPlease Wait...[0m
    Timeout /t 3 /nobreak >nul
    goto FTP-Menu
) else (
    goto FTP-checkpoint
)

:FTP-checkpoint
set /p ftp-stop-check=

if /i "%ftp-stop-check%"=="quit" (
	echo.
    echo Stopping the server...
	 Timeout /t 2 /nobreak >nul
    :: Find the Python process and terminate it
    for /f "tokens=2" %%i in ('tasklist ^| findstr "python"') do taskkill /f /pid %%i >nul
	echo Server stopped
	echo [94mPlease Wait...[0m
    Timeout /t 3 /nobreak >nul
    goto FTP-Menu
) else (
    goto FTP-checkpoint
)


:FTP-Menu
cls
echo. [92m
echo     _   _   _   _     _   _   _   _   _   _
echo    / \ / \ / \ / \   / \ / \ / \ / \ / \ / \
echo   ( F   I   L   E ) ( S   E   R   V   E   R )
echo    \_/ \_/ \_/ \_/   \_/ \_/ \_/ \_/ \_/ \_/ 
echo. [0m
echo [33m1. [0mMain Menu
echo [33m2. [0mRun File Server Again
echo [33m3. [0mExit
echo.
set /p FTP-option=Choose an option: [33m
echo [0m
if /i "%FTP-option%"=="1" (
    cls
    goto Menu
) else if /i "%FTP-option%"=="2" (
    cls
    goto FTP
) else if /i "%FTP-option%"=="3" (
    goto Exit
) else (
    echo This is an Incorrect Option
    echo [94mPlease Wait...[0m
    Timeout /t 3 /nobreak >nul
    goto FTP-Menu
)


