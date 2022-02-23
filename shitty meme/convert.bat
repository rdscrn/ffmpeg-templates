SET bgmus=The Laser Dance Song-cut.mp3
SET textb='when you'
SET textbs=200
:border
SET cbor=100
:how many times you want it to loop
SET loopc=7

for %%a in (*.mp4) do (
	ffmpeg -i "%%a" -filter_complex "[0:v]reverse,fifo[r];[0:v][r] concat=n=2:v=1 [v]" -map "[v]" "%%~na-temp.mp4"
	ffmpeg -stream_loop "%loopc%" -i "%%~na-temp.mp4" -i "%bgmus%" -vf "drawbox=y=ih-%cbor%*2:color=white:width=iw:height=%cbor%*2:t=fill,drawtext=fontfile=/Windows/Fonts/arialbd.ttf:text='%textb%':fontcolor=black:fontsize=%textbs%:x=(w-tw)/2:y=h-th/2-%cbor%,setpts=0.5*PTS" -c:v libx264 -c:a copy -movflags +faststart -shortest "%%~na-out.mp4"
	del "%%~na-temp.mp4" /q
)
PAUSE


::-filter_complex "[0]reverse[r];[0][r]concat,loop=5:250,setpts=N/25/TB"
::-filter_complex "[0:v]reverse,fifo[r];[0:v][r] concat=n=2:v=1 [v]" -map "[v]" output.mp4
::-c:v copy -map 0:v:0 -map 1:a:0 -shortest
::ffmpeg -stream_loop 7 -i "%%~na-temp.mp4" -i "%bgmus%" -c:v copy -map 0:v:0 -map 1:a:0 -shortest "%%~na-out.mp4"