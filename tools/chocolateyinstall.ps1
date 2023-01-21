$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.68.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = 'c5b232e41ab2a867d9a23dc07b77c550c07dc93f1095b8170d59d56403d1457a'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
