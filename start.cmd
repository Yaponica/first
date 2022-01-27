echo on
for /f %%# in ('wMIC Path Win32_LocalTime Get /Format:value') do @for /f %%@ in ("%%#") do @set %%@
rem set d='date /t'
rem set t='time /t'
copy E:\Exchange_AliExpress_\webdata\* E:\Exchange_AliExpress\webdata
e:
cd \Exchange_AliExpress\webdata
git status
git add .
git commit -a -m "%year%.%month%.%day% %hour%:%minute%:%second%"
git pull
git push -u origin main
