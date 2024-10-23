$packages = Get-Content -Path "$PSScriptRoot/../packages/choco.packages.env"  |
    ForEach-Object { $_.Trim() }                                              |
    Where-Object   { $_ -and -not $_.StartsWith('#') }


foreach ($package in $packages)
{
    choco install $package
}