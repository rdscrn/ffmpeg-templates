::this one uses a thumbnail
for %%a in (*.mp3 *.wav) do ( ffmpeg -loop 1 -i thumb.png -i "%%a" -c:v libx264 -preset medium -tune stillimage -crf 18 -shortest -pix_fmt yuv420p "%%~na.mp4")

PAUSE

::this one uses solid color
::for %%a in (*.mp3 *.wav) do ( ffmpeg -f lavfi -i "color=c=0xFF0000:s=1280x720" -i "%%a" -c:v libx264 -preset medium -tune stillimage -crf 18 -c:a copy -shortest -pix_fmt yuv420p "%%~na.mp4")
