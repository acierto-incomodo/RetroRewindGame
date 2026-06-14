Clear.bat
python -m PyInstaller --onefile --windowed --noconsole --icon=retro-rewind.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=retro-rewind.ico PlayGame.py
echo v1.0.0 > GameVersion.txt

:: Copiar archivos necesarios a la carpeta dist
copy /y PlayGame.json dist\
if exist retro-rewind.ico copy /y retro-rewind.ico dist\PlayGame.ico
if exist retro-rewind.png copy /y retro-rewind.png dist\PlayGame.png

echo Compilacion y copiado completado.