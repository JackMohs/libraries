@echo on
set u=https://github.com/JackMohs/libraries/blob/master/Picture
set /a a=%1
:begin
mkdir %a%
set /a j=1
:while
wget -nc -P .\%a% %u%/Fonts/%j%.jpg 2>&1|findstr "404" >nul && goto break
set /a j=%j%+1
goto while
:break
if %a% lss %2 (set /a a=%a%+1 & goto begin)
pause
