if not exist "F:\upload\" mkdir F:\upload

for %%f in (E:\avi\*.mp4) do (
    echo compressing  %%f
    echo writing to %%~df/upload_archives/%%~nf.7z
    7z a -v10g F:/upload/%%~nf.7z %%f

)
