  # Writes end decorator
  Write-Host "$EndDecorator " `
    -ForegroundColor $transitionColour `
    -BackgroundColor $defaultBackgroundColour `
    -NoNewline

if($inputOnNewLine -eq $true)
{
  Write-Host ''
}
elseif($inputOnNewLine -eq $false)
{

}
elseif($inputOnNewLine -match "^\d+$")
{

}
