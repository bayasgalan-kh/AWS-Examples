<powershell>

$downloadUrl = "https://www.apachelounge.com/download/VS17/binaries/httpd-2.4.58-240131-win64-VS17.zip"

$zipPath = "C:\apache.zip"

$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile($downloadUrl,$zipPath)

$extractPath = "C:\"

Expand-Archive -Path $zipPath -DestinationPath $extractPath

Remove-Item -Path $zipPath

# $serviceMonitorPath = Join-Path -Path $extractPath -ChildPath "Apache24\bin\ApacheMonitor.exe"

$httpdPath = Join-Path -Path $extractPath -ChildPath "Apache24\bin\httpd.exe"
Start-Process -FilePath $httpdPath -ArgumentList "-k install -d C:\Apache24" -Wait

Start-Service -Name "Apache2.4"

</powershell>
