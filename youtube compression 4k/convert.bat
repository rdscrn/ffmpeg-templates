for %%a in (*.*) do ( ffmpeg -i "%%a" -c:v libx264 -pix_fmt yuv420p -vf scale=3840:-1 "%%~na-out.mp4")
PAUSE