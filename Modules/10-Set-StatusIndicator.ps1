# Sets the icon and icon colour of the

# check if shell is admin
$shellAdmin = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())

if($lastCommandStatus -eq $true)
{
  if ($shellAdmin.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator) -eq $true)
  {
    # If admin
    Write-Host "$adminStatusIcon " `
      -ForegroundColor $warningTextColour `
      -BackgroundColor $statusIndicatorBackgroundColour `
      -NoNewline
  }
  else
  {
    # If normal user
    Write-Host "$userStatusIcon " `
      -ForegroundColor $infoTextColour `
      -BackgroundColor $statusIndicatorBackgroundColour `
      -NoNewline
  }
}
else
{
  Write-Host "$failedStatusIcon " `
    -ForegroundColor $errorTextColour `
    -BackgroundColor $statusIndicatorBackgroundColour `
    -NoNewline
}

$global:transitionColour = $statusIndicatorBackgroundColour
