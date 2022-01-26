echo on
for /f %%# in ('wMIC Path Win32_LocalTime Get /Format:value') do @for /f %%@ in ("%%#") do @set %%@
rem set d='date /t'
rem set t='time /t'
copy E:\Exchange_AliExpress_\webdata\* E:\Exchange_AliExpress\webdata
<<<<<<< HEAD
e:
=======
d:
>>>>>>> 13dead1057ffac6b87aaefabc15f85cc62d7ca48
cd \Exchange_AliExpress\webdata
git status
git add .
git commit -a -m "%year%.%month%.%day% %hour%:%minute%:%second%"
git push -u origin main
