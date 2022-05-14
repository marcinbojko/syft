$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.46.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = "12579e352b0031d70b8832c97f772ee67dc30f8257c8662fc2e1d449b7e4f015"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
