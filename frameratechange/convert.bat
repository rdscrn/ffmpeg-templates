for %%a in (*.*) do ( ffmpeg -i "%%a" -r 24 -y "%%~na_fixed-framerate.mp4")
PAUSE