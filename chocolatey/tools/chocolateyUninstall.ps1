$ErrorActionPreference = 'Stop'

$packageName = 'file-explorer'
$softwareName = 'File Explorer'

[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
if ($key.Count -eq 1) {
    $key | ForEach-Object {
        $file = $_.UninstallString
        Uninstall-ChocolateyPackage -PackageName $packageName -FileType 'exe' -SilentArgs '/S' -File $file
    }
}
