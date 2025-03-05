$packages = Get-Content -Path "$PSScriptRoot/../packages/winget.packages.env" |
    ForEach-Object { $_.Trim() }                                |
    Where-Object   { $_ -and -not $_.StartsWith('#') }


# winget Packages
foreach ($package in $packages)
{
    winget install --id $package    `
        --source winget             `
        --accept-source-agreements  `
        --accept-package-agreements `
        --scope machine
}