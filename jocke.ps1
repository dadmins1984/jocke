$x = New-Object -ComObject Shell.Application
$x.minimizeall()
$sh = New-Object -ComObject "Shell.Application"
$sh.Namespace(17).Items() | 
Where-Object { $_.Type -eq "CD Drive" } | 
foreach { $_.InvokeVerb("Eject") }
start-process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://www.youtube.com/watch?v=zfwJiG2F698#t=2m32s ; Start-Sleep -Milliseconds 950 ; [void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') ; [System.Windows.Forms.SendKeys]::SendWait("{F11}")
Add-Type -AssemblyName System.Windows.Forms
$timeout = new-timespan -Seconds 80 
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = ($pos.X % 500) + 1
  $y = ($pos.Y % 500) + 1
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
