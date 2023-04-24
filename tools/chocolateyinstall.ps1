$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.77.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = 'aa1efe7719128e14881e29626f3e080d5eae405dc9d2649e9affda4bfad248a6'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
