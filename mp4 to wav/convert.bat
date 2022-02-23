for %%a in (*.mp4 *.mkv *mpeg) do ( ffmpeg -i "%%a" "%%~na.wav")
PAUSE