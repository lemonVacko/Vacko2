@echo off
git config --global user.name "LemonVacko"
git config --global user.eamil "cpddabc@126.com"
git init
git add .
git commit -m "UploadUser"
git remote add origin git@github.com:lemonVacko/Vacko2.git
git push -u origin master

