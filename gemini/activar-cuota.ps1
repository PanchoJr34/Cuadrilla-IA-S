# Hace que Antigravity guarde su estado para que el panel de Cuadrilla muestre la cuota.
$ErrorActionPreference = 'Stop'
$dir = Join-Path $HOME '.gemini\antigravity-cli'
$path = Join-Path $dir 'settings.json'
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$settings = if (Test-Path $path) { Get-Content $path -Raw | ConvertFrom-Json } else { [pscustomobject]@{} }
if ($settings.PSObject.Properties.Name -contains 'statusLine') {
  Write-Host '[AVISO] Antigravity ya tiene una barra de estado. Cuadrilla no la cambio; la cuota de Gemini no aparecera en el panel.'
  exit 0
}
if (Test-Path $path) { Copy-Item $path "$path.cuadrilla.bak" -Force }
$command = 'findstr "^" > "%USERPROFILE%\.gemini\cuadrilla-estado.json"'
$settings | Add-Member -NotePropertyName statusLine -NotePropertyValue ([pscustomobject]@{ type = 'command'; command = $command; stack_with_default = $true })
[IO.File]::WriteAllText($path, ($settings | ConvertTo-Json -Depth 20), (New-Object Text.UTF8Encoding($false)))
Write-Host '[OK] Cuota de Gemini activada.'
