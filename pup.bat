@echo off

:: Close all browser
for %%B in (chrome firefox msedge brave opera) do taskkill /F /IM %%B.exe >nul 2>&1


:: Open PUP website
start "" "https://www.pup.edu.ph/"
:: Create simple popup
powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Welcome to PUP', 'Message Box Title')"

