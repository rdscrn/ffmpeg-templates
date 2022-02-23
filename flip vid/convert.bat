for %%a in (*.*) do ( ffmpeg -i "%%a" -vf hflip -c:a copy "out-%%~na.mp4")
PAUSE