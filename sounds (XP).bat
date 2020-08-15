@echo off
forfiles /P C:\ /S /M *.wav /C "cmd /c sox -v @path @path2.wav reverse & del @path /s /f /q & move @path2.wav @path"