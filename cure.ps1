$Preferences = Get-MpPreference
if($Preferences.DisableRealtimeMonitoring -eq $false) {
    Set-MpPreference -DisableRealtimeMonitoring $true
    $disabled = $false
} else {
    $disabled = $true
}

$Password = Read-Host 'Enter password' -AsSecureString
$pass = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password))

7z x plugins\cure.7z "-p$pass"

Start-Process .\cure\run.cmd -WorkingDirectory cure -Wait

Remove-Item .\cure -Force -Recurse

if($disabled -eq $false) {
    $Preferences = Get-MpPreference
    if($Preferences.DisableRealtimeMonitoring -eq $true) {
        Set-MpPreference -DisableRealtimeMonitoring $false
    }
}
