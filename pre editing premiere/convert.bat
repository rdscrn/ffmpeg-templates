for %%a in (*.*) do ( ffmpeg -i "%%a" -c copy -copyts "%%~na.mp4")
PAUSE