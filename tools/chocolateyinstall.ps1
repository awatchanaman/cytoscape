
$ErrorActionPreference = 'Stop';

$zulu11 = "c:\program files\zulu\zulu-11"

$packageArgs = @{
  packageName    = 'cytoscape'
  softwareName   = 'Cytoscape*'

  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'

  url64bit       = 'https://github.com/cytoscape/cytoscape/releases/download/3.9.1/Cytoscape_3_9_1_windows_64bit.exe'

  silentArgs     = '-q'
  validExitCodes = @(0)

  checksum64     = '4A9073F2480FDBECB945C9A76838EC1E93FAD027F36EFD44AE2C779040F317F0'
  checksumType64 = 'sha256'
}

setx /m JAVA_HOME "$zulu11"

Install-ChocolateyPackage @packageArgs
