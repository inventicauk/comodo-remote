$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.cmdm.comodo.com/download/ComodoRemoteControl.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'COMODO Remote Control*'
  checksum      = '0BFBCCF44C609CE85B3B1B77115503101FBAB8152FFE5A3789F73FB3047B8522'
  checksumType  = 'sha256'
  silentArgs    = "/silent"
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
