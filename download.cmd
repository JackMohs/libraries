@echo off
set u=https://github.com/JackMohs/libraries/blob/master/Picture
set /a j=%1-1
:begin
set /a j=%j%+1

if %j% GTR %2 goto end

mkdir %j% || echo ��Ŀ¼���ļ� %j% �Ѿ��½���

for /l %%i in (10,1,35) do (	
	wget -nc -P .\%j% %u%/Fonts/%%i.jpg 2>&1|find "404" >nul && goto begin
)

echo ERROR LESS

:end