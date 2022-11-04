$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.60.3'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = 'a4e8b238492fa7c60d9908080cbe9c68fa32216f4a841c63fa2ef9ff7a02dd40'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
