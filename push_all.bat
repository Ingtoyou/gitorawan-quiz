@echo off
chcp 65001 >nul
echo กำลัง Push ทั้ง 7 สายขึ้น GitHub (https://github.com/Ingtoyou/gitorawan-quiz.git)...
git push -u origin main
git push -u origin feature/header
git push -u origin feature/about
git push -u origin feature/style
git push -u origin feature/script
git push -u origin docs/readme
git push -u origin experiment/merge-conflict
echo.
echo ตรวจสอบสถานะสายบน GitHub:
git ls-remote --heads origin
pause