$ErrorActionPreference = 'Stop'
$serviceName = 'package-cleanup'

Uninstall-ChocolateyWindowsService -Name $serviceName