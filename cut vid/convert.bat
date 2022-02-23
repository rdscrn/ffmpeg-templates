::@echo off


for %%a in (*.mp4) do (
  ffmpeg -i "%%a" -ss 00:15:23.00 -t 00:05:00.00 "%%~na-cut.mp4"
)

PAUSE