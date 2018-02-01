$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cmdm.comodo.com/download/ComodoRemoteControl.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'COMODO Remote Control*'
  checksum      = 'E65952E15FF82C6A9E2A9D8F399D61DD225DB4674904FC2247E5F500BF0A03CB'
  checksumType  = 'sha256'
  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
