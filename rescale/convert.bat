for %%a in (*.*) do ( ffmpeg -i "%%a" -vf scale=300:-1 "%%~na1.gif")
PAUSE