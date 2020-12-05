$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://blitz-stable.blitz.gg/Blitz-1.13.47.exe'
$checksum   = 'D0B358D43559751B8AD5C9B82CDC77C976733B4DBD4A72B68151A272F792C3AF'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'Blitz App'
  checksum      = $checksum
  checksumType  = 'sha256'
  silentArgs    = "/s /q /quiet"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs