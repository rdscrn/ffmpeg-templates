for %%a in (*.*) do (ffmpeg -i "%%a" -pix_fmt rgb24 out.gif)
PAUSE