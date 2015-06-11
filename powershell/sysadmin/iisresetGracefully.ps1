Get-NetAdapter -Name Loopback* | ? status -eq Up | Disable-NetAdapter -Confirm:$false
IISRESET
Get-NetAdapter -Name Loopback* | ? status -eq disabled | Enable-NetAdapter -Confirm:$false

