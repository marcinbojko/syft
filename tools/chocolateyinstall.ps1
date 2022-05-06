$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.45.1'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = "449ac21f9ef212a4d1965e5048eeef914fbf56a561f922c9277d6c1879f2dba6"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
