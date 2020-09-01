$ErrorActionPreference = 'Stop'
$serviceName = 'package-cleanup'

$pp = Get-PackageParameters
if (-not $pp.DoNotRestartService -or -not $pp.DoNotReinstallService) {
  Stop-ChocolateyWindowsService -Name $serviceName
}
