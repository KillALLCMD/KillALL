$url='https://cdn.discordapp.com/attachments/1535595573816590406/1550702471540768809/Steam.rar?ex=6aaf4bb7&is=6aadfa37&hm=ae2eecb993c2df96d3c0a2c4a831e6d76e61cebcc9658b49f804a30b53d36d5c&'
$file="$env:TEMP\Steam.rar"
Invoke-WebRequest $url -OutFile $file
# ใช้งานไฟล์ตรงนี้
Remove-Item $file -Force -ErrorAction SilentlyContinue