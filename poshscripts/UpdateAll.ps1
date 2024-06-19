$version = Read-Host -Prompt 'Skriv inn versjon nummer'

$bop = "C:\RSPOS\rs_service\SvcLocalState\files\${version}_bop\updateBop.ps1"
$rss = "C:\RSPOS\rs_service\SvcLocalState\files\${version}_rss\updateRss.ps1"
$uwp = "C:\RSPOS\rs_service\SvcLocalState\files\${version}_uwp\updateuwp.ps1"

if (Test-Path $bop) {
    Start-Process powershell.exe -Verb RunAs -ArgumentList "-NoExit","-File `"$bop`""
}
if (Test-Path $rss) {
    Start-Process powershell.exe -Verb RunAs -ArgumentList "-NoExit","-File `"$rss`""
}
if (Test-Path $uwp) {
    Start-Process powershell.exe -Verb RunAs -ArgumentList "-NoExit","-File `"$uwp`""
}
