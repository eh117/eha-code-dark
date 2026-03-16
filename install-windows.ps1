[CmdletBinding()]
param(
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$packageJsonPath = Join-Path $scriptDir 'package.json'

if (-not (Test-Path $packageJsonPath)) {
    throw "package.json not found in $scriptDir"
}

$manifest = Get-Content -Raw -Path $packageJsonPath | ConvertFrom-Json

if (-not $manifest.publisher -or -not $manifest.name -or -not $manifest.version) {
    throw 'package.json must include publisher, name, and version.'
}

$extensionFolderName = "$($manifest.publisher).$($manifest.name)-$($manifest.version)"
$extensionsRoot = Join-Path $env:USERPROFILE '.vscode\extensions'
$targetDir = Join-Path $extensionsRoot $extensionFolderName

if (-not (Test-Path $extensionsRoot)) {
    New-Item -ItemType Directory -Path $extensionsRoot | Out-Null
}

if (Test-Path $targetDir) {
    if (-not $Force) {
        Write-Host "Existing install found at: $targetDir"
        Write-Host 'Re-run with -Force to replace it.'
        exit 0
    }

    Remove-Item -Recurse -Force -Path $targetDir
}

if ((Test-Path $targetDir) -and -not (Test-Path $targetDir -PathType Container)) {
    Remove-Item -Force -Path $targetDir
}

if (-not (Test-Path $targetDir -PathType Container)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

Copy-Item -Recurse -Force -Path (Join-Path $scriptDir '*') -Destination $targetDir

Write-Host "Installed theme to: $targetDir"
Write-Host 'Restart or reload VS Code, then choose the theme in Preferences: Color Theme.'
