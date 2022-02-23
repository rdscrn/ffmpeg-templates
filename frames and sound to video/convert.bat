ffmpeg -i in%03d.tiff -i in.wav -c:v libx264 fps=30 -pix_fmt yuv420p "%%~na-out.mp4"
PAUSE