@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="C:\Users\guru\Desktop\winscp_logs\winscplog.log" /ini=nul ^
  /command ^
    "open ftp://nicholasbush2012%%40u.northwestern.edu:Bnji9olqaz%%21@ftp.box.com/ -rawsettings ProxyPort=0" ^
    "put ""F:\\upload\*.*"" ""/__AWAKE_backup/avi/*.*""" ^
    "exit"

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
  del "F:\upload\*.*"
) else (
  echo Error
)

pause
exit /b %WINSCP_RESULT%
