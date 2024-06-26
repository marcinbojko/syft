﻿$ErrorActionPreference = 'Stop';

$packageName        = 'syft'
$version            = '1.8.0'
$url64              = "https://github.com/anchore/syft/releases/download/v"+$version+"/syft_"+$version+"_windows_amd64.zip"
$checksum64         = '984d41fc0d2a9c4b1e4f76a7fa0eb786dc35568e19b3cbea2e355644a9c693c6'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  UnzipLocation = $toolsDir
  url64bit      = $url64
  checksumType64= 'sha256'
  checksum64    = $checksum64
}

Install-ChocolateyZipPackage @packageArgs
