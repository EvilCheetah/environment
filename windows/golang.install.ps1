$packages = Get-Content -Path "./golang.packages.env"  |
    ForEach-Object { $_.Trim() }                       |
    Where-Object   { $_ -and -not $_.StartsWith('#') }


foreach ($package in $packages)
{
    go install $package
}