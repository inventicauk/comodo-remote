$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cmdm.comodo.com/download/ComodoRemoteControl.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'COMODO Remote Control*'
  checksum      = 'E2CDC057B22D26E04114A78577D4C71668B4E7A9C83EA5F6BF70D7BDED4C532D'
  checksumType  = 'sha256'
  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
