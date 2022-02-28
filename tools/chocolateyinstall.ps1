$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '0.39.3'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = "25ef78eeaf035d65afa21fb9f8e2bbcf85db216bc5ca205ebf4aa266a43e9c10"
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"


$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
