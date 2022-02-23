::for %%a in (*.wav) do ( ffmpeg -i "%%a" -f segment -segment_time 300 -c copy -map 0 "%%~na%%09d.wav")
for %%a in (*.mp3) do ( ffmpeg -i "%%a" -f segment -segment_time 300 -c copy -map 0 "%%~na%%09d.mp3")
PAUSE