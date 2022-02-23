for %%a in (*.*) do ( ffmpeg -i "%%a" -c:v libvpx -crf 12 -b:v 430K -codec:a libvorbis "%%~na.webm")
PAUSE

::ffmpeg -i "%%a" -c:v libvpx -crf 12 -b:v 2000K -c:a libopus "%%~na.webm"