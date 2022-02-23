for %%a in (*.*) do ( ffmpeg -i "%%a" -c:v libx264 -pix_fmt yuv420p "%%~na1.mp4")
PAUSE