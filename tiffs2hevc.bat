for %%f in (E:\*.seq) do (
    echo %%~df%%~pf%%~nf

    ffmpeg -f image2 -hwaccel cuvid -i E:\tiff%%~pf%%~nf.%%06d.tif -c:v hevc_nvenc -qp 10 -preset medium E:\avi%%~pf%%~nf.mp4
)
for %%f in (F:\*.seq) do (
    echo %%~df%%~pf%%~nf

    ffmpeg -f image2 -hwaccel cuvid -i E:\tiff%%~pf%%~nf.%%06d.tif -c:v hevc_nvenc -qp 10 -preset medium E:\avi%%~pf%%~nf.mp4
)

