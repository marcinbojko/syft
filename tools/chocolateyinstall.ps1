$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.50.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = "0fd2f2ba1953511f505ec27f321b435ab2b5e0f8bc89a32aa9b4edfef390ba64"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
