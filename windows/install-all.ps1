& ./scripts/winget.install.ps1
& ./scripts/golang.install.ps1
& ./scripts/choco.install.ps1

## TODO(eugene): Call all commands that require env to be set
## Also, set all env variables for `mingw` and run the following:
## `pacman -S mingw-w64-x86_64-gettext`