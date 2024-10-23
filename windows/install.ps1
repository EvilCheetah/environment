$packages = Get-Content -Path "./packages.env"         |
    ForEach-Object { $_.Trim() }                       |
    Where-Object   { $_ -and -not $_.StartsWith('#') }


foreach ($package in $packages)
{
    winget install --id $package    `
        --source winget             `
        --accept-source-agreements  `
        --accept-package-agreements
}