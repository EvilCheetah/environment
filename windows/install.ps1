$packages = Get-Content -Path "./packages.txt"


foreach ($package in $packages)
{
    winget install --id $package    `
        --source winget             `
        --accept-source-agreements  `
        --accept-package-agreements
}