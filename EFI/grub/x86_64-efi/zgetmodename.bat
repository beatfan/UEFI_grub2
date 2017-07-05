for /f "tokens=1 delims=" %%i in ('dir /b/s/a-d *.mod') do (
echo %%~nxi >>zmodelist.txt
)