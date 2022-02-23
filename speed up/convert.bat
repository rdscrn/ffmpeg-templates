set /A speed=8
set s=%speed%
set t=1 / %speed%
for %%a in (*.*) do ( ffmpeg -i "%%a" -filter_complex "[0:v]setpts=%t%*PTS[v];[0:a]atempo=%s%[a]" -map "[v]" -map "[a]" "%%~na-fast.mp4")
PAUSE