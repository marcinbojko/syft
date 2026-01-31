$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.41.1'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '0bab55a5b9a22dea6d5f5ca173355084a1db5ad1bc7186a51b4f5a53e4190a81'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
