@echo off
echo ========================================
echo    CreditFlow - Deploiement automatique
echo ========================================
echo.

cd C:\Users\HP\Documents\creditflow-website

echo Copie des nouveaux fichiers...
Copy /Y C:\Users\HP\Downloads\index.html .
Copy /Y C:\Users\HP\Downloads\admin.html .

echo.
echo Verification des changements...
git status

echo.
echo Ajout des fichiers...
git add .

echo.
echo Commit...
git commit -m "Mise a jour site CreditFlow"

echo.
echo Push vers GitHub...
git pull --rebase
git push

echo.
echo ========================================
echo    Deploiement termine avec succes !
echo    Le site sera mis a jour en 30 sec.
echo ========================================
echo.
pause
