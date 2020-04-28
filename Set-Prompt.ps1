# Main script that is dot sourced into the environment.
# Ensure all scripts are UTF-8 with BOM encoding or
# odd behaviour will occur with ligatures

function prompt
{
  # Get status of the last executed command.
  # Must be the first executed line to work.
  if ($? -eq $true){ $global:lastCommandStatus = $True }else{ $global:lastCommandStatus = $false }

  # Dot source modules into prompt
  $modulesPath = "$PSScriptRoot\Modules"
  $modules = Get-ChildItem $modulesPath | Where-Object { $_.Name -match '.ps1' }
  foreach ($module in $modules) { . $modulesPath\$module }

  return ' '
}
