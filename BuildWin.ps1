./Clear.ps1
python -m PyInstaller --onefile --windowed --noconsole --icon=retro-rewind.ico NoCompatibleToInstall.py
python -m PyInstaller --onefile --windowed --noconsole --icon=retro-rewind.ico PlayGame.py
echo v1.0.0 > GameVersion.txt

# Copiar archivos necesarios a la carpeta dist
Copy-Item PlayGame.json -Destination dist\ -Force
if (Test-Path "retro-rewind.ico") { Copy-Item "retro-rewind.ico" -Destination "dist\PlayGame.ico" -Force }
if (Test-Path "retro-rewind.png") { Copy-Item "retro-rewind.png" -Destination "dist\PlayGame.png" -Force }

Write-Host "Compilacion y copiado completado."