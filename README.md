# COMODO Remote Control
## comodo-remote CHOCO INSTALL comodo-remote

https://chocolatey.org/packages/comodo-remote/

Chocolatey Package for the COMODO One ITSM/RMM software to Remote Control a Remote Desktop based on Chromemoting
Package directly download the Remote Control Software from the Comodo servers located at

## Version 6.15 / Jan 2018 Update
https://dl.cmdm.comodo.com/download/ComodoRemoteControl.exe
SHA256 Checksum: E65952E15FF82C6A9E2A9D8F399D61DD225DB4674904FC2247E5F500BF0A03CB

### Version 6.14.9539.17120 / December 23rd 2017

### Checksum Verification using the AU Powershell Module 

https://www.powershellgallery.com/packages/AU/2017.8.30
https://github.com/majkinetor/au/

```
Import-Module AU
Get-RemoteChecksum -Algorithm sha256 -Url 'https://dl.cmdm.comodo.com/download/ComodoRemoteControl.exe'
0bfbccf44c609ce85b3b1b77115503101fbab8152ffe5a3789f73fb3047b8522
```
