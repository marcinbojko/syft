$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.33.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '0e1326e27a5e48102d9f806eb03b9c80d3d5e7b78abfd19a04887b2a0edd22b7'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
