@echo off
cd UserInfo.vak2
git pull
git add .
git commit -m "上传用户数据"
git push -u origin master
pause

