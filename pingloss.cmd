for /f "tokens=*" %%A in ('ping -n 1 %1 ^|find "Pinging %1"') Do echo %%A >>pingloss-%1.txt

:START

FOR /f "tokens=3 delims=," %%A IN ('ping -n 1 %1 ^|find "Lost = 1"') DO echo %date% %time% - [%%A] >>pingloss-%1.txt

choice /c x /t 1 /d x >nul

goto START
