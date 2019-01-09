@echo off

"C:\Program Files (x86)\WinSCP\WinSCP.com" ^
  /log="C:\Users\guru\Desktop\winscp_logs\winscplog.log" /ini=nul ^
  /command ^
    "option confirm off" ^
    "option batch on" ^
    "open ftp://nicholasbush2012%%40u.northwestern.edu:Bnji9olqaz%%21@ftp.box.com/ -rawsettings ProxyPort=0" ^
    "put ""F:\\upload\*.*"" ""/__AWAKE_backup/avi/*.*""" ^
    "exit"


exit /b %WINSCP_RESULT%
del F:\upload\*.7z.*