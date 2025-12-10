$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.38.2'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '74d57daca2a9d08f0d470d3c4c11e8b98ed4a5ee5abb70f1ed9d207d319fcf51'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
