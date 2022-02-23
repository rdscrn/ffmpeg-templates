for %%a in (*.*) do ( ffmpeg -i "%%a" -c copy -an "%%~na-out.avi")
PAUSE