for %%a in (*.mp4) do (
for %%b in (watermark/*.avi) do (
ffmpeg -i "%%a" -vf "movie=watermark/%%b:loop=0,setpts=N/FRAME_RATE/TB,scale=iw/8:-1 [watermark];[in][watermark] overlay=shortest=1:x=(main_w-overlay_w):y=(main_h-overlay_h)" "%%~na1.mp4"
))
pause