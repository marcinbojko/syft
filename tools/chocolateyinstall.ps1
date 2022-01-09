$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.35.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = "6ba20a3c61eddaeb51c9263ca1d39b44684817d1de6d3ae9e3a6396489596f2b"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
