$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.0.1'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '95bc151e3a713a31f7ae7bfacbe0bda8c8d8e08e390038b0c2fc7220c1b9c49c'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
