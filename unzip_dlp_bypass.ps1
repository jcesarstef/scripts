Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::ExtractToDirectory('nmap-7.50-win32.zip', 'nmap-7.50-win32')
