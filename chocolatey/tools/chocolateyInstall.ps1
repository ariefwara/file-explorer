$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = 'file-explorer'
    fileType       = 'exe'
    url64bit       = 'https://github.com/ariefwara/file-explorer/releases/download/v0.1.0/file-explorer_0.1.0_x64-setup.exe'
    checksum64     = '445cf3fb720ec27e2a5e03e16ac1d957f0a3c290f4dd2e1cbc9d24ba4c006333'
    checksumType64 = 'sha256'
    silentArgs     = '/S'
    validExitCodes = @(0, 3010)
}

Install-ChocolateyPackage @packageArgs
