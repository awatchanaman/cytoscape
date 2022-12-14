
$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'cytoscape'
  softwareName   = 'Cytoscape*'

  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'

  url            = 'https://github.com/cytoscape/cytoscape/releases/download/3.9.1/Cytoscape_3_9_1_windows_32bit.exe'
  url64bit       = 'https://github.com/cytoscape/cytoscape/releases/download/3.9.1/Cytoscape_3_9_1_windows_64bit.exe'

  silentArgs     = '-q'
  validExitCodes = @(0)

  checksum       = 'B6D970B35CB2325C6B12D9991B70B766074A9A1D3DACB35E1E5BD9FF61D9644B'
  checksum64     = '4A9073F2480FDBECB945C9A76838EC1E93FAD027F36EFD44AE2C779040F317F0'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs
