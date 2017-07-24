$source = "https://ftp.mozilla.org/pub/firefox/releases/54.0/win32/pt-BR/Firefox%20Setup%2054.0.exe"
$destination = "."

Invoke-WebRequest $source -OutFile $destination
