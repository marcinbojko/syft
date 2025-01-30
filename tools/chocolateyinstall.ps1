$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.19.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '405171c57db0c0a6c259a90673ae498482f2501e8ac9b685a94fa186dd6b9a4b'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
