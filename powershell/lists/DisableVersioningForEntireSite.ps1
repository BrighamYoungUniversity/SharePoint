param (
	[string]$URL = $(throw "-URL is required.")
	)

$site = Get-SPSite -Identity $URL
$wa = $site.WebApplication
$sites = $wa | Get-SPSite -Limit ALL
foreach ($site in $sites){
	$site | Get-SPWeb -Limit ALL | foreach-object {
		$lists = $_.Lists
		foreach ($list in $web.Lists){
				$list.EnableVersioning = $false
		}
	}	
}	
