$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.75.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = 'ac1f5b6e7fc1e5e4b0da257a8b67e358c75afefda0c5384b743c51642086ec80'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
