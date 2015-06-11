param (
	[string]$Url = $(throw "-Url is required")
)

stsadm -o deactivatefeature -filename publishing\feature.xml -url $URL -force
stsadm -o deactivatefeature -filename publishingresources\feature.xml -url $URL -force
stsadm -o deactivatefeature -filename publishingSite\feature.xml -url $URL -force
stsadm -o deactivatefeature -filename publishingweb\feature.xml -url $URL -force

stsadm -o activatefeature -filename publishing\feature.xml -url $URL -force
stsadm -o activatefeature -filename publishingresources\feature.xml -url $URL -force
stsadm -o activatefeature -filename publishingSite\feature.xml -url $URL -force
stsadm -o activatefeature -filename publishingweb\feature.xml -url $URL  -force
stsadm -o activatefeature -filename publishinglayouts\feature.xml -url $URL -force
stsadm -o activatefeature -filename navigation\feature.xml -url $URL -force
