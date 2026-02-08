$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.41.2'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '693c8546e7497d3060b38e67dc1632e16bee60d83d95f44b9d13d4866336df33'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
