@echo off
title Voidlab - 303RP Mod Kurucu
color 0a

echo [Voidlab] Minecraft 1.12.2 mod kurulumu basliyor...
echo Forge 1.12.2 yüklü değilse önce onu kurmalısın.
echo.

:: Mods klasörünü ayarla
set "modsKlasoru=%APPDATA%\.minecraft\mods\1.12.2"

:: Mods klasörü yoksa oluştur
if not exist "%modsKlasoru%" (
    echo [!] Mod klasörü bulunamadı. Olusturuluyor...
    mkdir "%modsKlasoru%"
)

echo.
echo [Voidlab] Modlar yukleniyor...

:: 303rpmods klasöründeki tüm .jar dosyalarını mods klasörüne kopyala
for %%F in (303rpmods\*.jar) do (
    echo Kuruluyor: %%~nxF
    copy "%%F" "%modsKlasoru%" >nul
)

echo.
echo [Voidlab] Tum modlar basariyla yuklendi!
echo Minecraft'i Forge 1.12.2 ile başlat.
pause
