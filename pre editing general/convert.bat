for %%a in (*.mp4) do ( ffmpeg -i "%%a" -vcodec huffyuv -acodec copy "%%~na.avi")
PAUSE