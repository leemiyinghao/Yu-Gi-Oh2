@echo off
echo ===============================================================================
echo :@@@@+ `'```                :@@@@@@;  @@@@        `@@@@@   @@+      @@@@   @@@@
echo   @@@#  @@@:               @@@@. `@@  @@@@       @@@@ @@@  @@       @@@@  `@@@.
echo   @@@@ #@@   `'+ `;;      @@@@     '.''''@.     @@@@   @@ .@ `@#    @@@   #@@@ 
echo   #@@@.@@    @# .@` :,,: @@@@  @##,  ,@@  :,,: @@@@@+ '@@ @@@@@@@  :@@@   @@@  
echo    @@@@@    @@  @@@ @@@@ @@@@ +@@@+  @@@  @@@@ @@@@@@@@@@ @@@@@@@  @@@    @@@  
echo    @@@'    @@@@@@@@ @@@`:@@@# ; @@   @@@  @@@`+@@@@@@@@@``@@@@@@:  @@#    @@   
echo   ;@@@     @@@@@@@`     `@@@@  @@@  @@@'      #@@@@@@@@@ @@# @@@  #',,: '#,,,  
echo   @@@@     @@@@@@+       @@@@@@@@@  @@@        @@@@@@@#  @@  @@   @@@+  +@@@   
echo  @@@@@     @@@@@          @@@@@@`  +@@@        '@@@@@   '@@ @@:  @@@@@ `@@@@   
echo ===============================================================================
echo                                                            MKV Problem solver   
echo    1.This is a script of NCUACG, by NCUACG, for NCUACG.                        
echo    2.This script is free to disturbute, modify, and use inside NCUACG.         
echo    3.Using or disturbute this script outside, have to be approve by NCUACG.    
echo    4.Any script base on this one, have to be released as the same way.          
echo    THIS SCRIPT IS A MKV PROBLEM SOLVER, ANY MKV RAW FILE CAN BE PROCESSED      
echo    IF IT CANNOT SOLVE THE PROBLEM, IT MUST BE Yu-Gi-Oh'S PROBLEM                
cd "%~dp0"
%~d0
:whileStart
if [%1]==[] GOTO whileEnd
if "%~x1"==".mkv" (
	if not exist "%~dp1mp4" mkdir "%~dp1mp4"
	for /f "usebackq delims=" %%i in  (`MediaInfo_CLI_0.7.79_Windows_x64\MediaInfo.exe "--Output=Video;%%BitDepth%%" %1`) do (
		if %%i gtr 8 (
			echo 10bit! Re-encoding...
			"libav-11.3-win64\win64\usr\bin\avconv.exe" -i %1 -c:v libx264 -crf 18 -c:a libmp3lame -q:a 0 "%~dp1mp4\%~n1.mp4" -hwaccel qsv
		)
		if %%i leq 8 ("libav-11.3-win64\win64\usr\bin\avconv.exe" -i %1 -c:v copy -c:a libmp3lame -q:a 0 "%~dp1mp4\%~n1.mp4")
	)
)
shift
GOTO whileStart
:whileEnd
echo Work done.
pause