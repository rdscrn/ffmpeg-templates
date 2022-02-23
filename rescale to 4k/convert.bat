for %%a in (*.*) do ( ffmpeg -i "%%a" -vf scale=3840:-1 "%%~na1.avi")
PAUSE