for %%a in (*.avi *.mp4) do (ffmpeg -i "%%a" -pix_fmt rgb24 -vf scale=500:-1 %%a-out.gif)
PAUSE