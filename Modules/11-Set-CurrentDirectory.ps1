# Sets the current directory

$currentDirectory = (Get-Location).path.ToLower()
$currentDirectory = $currentDirectory.Replace("c:\users\$(($env:username).ToLower())", $UserHomePathIcon)
$global:promptCount = $promptCount + $currentDirectory.Length

# Write start decorator
Write-Host "$startDecorator " `
  -ForegroundColor $transitionColour `
  -BackgroundColor $CurrentPathBackgroundColour `
  -NoNewline

# Shorten prompt length if above $maximumPromptLength
if($promptCount -gt $maximumPromptLength)
{
  $shortenedDirectory = Split-Path -Path $currentDirectory -Leaf
  Write-Host "$ShortenedDirectoryIcon ...\$shortenedDirectory " `
    -ForegroundColor $CurrentPathTextColour `
    -BackgroundColor $CurrentPathBackgroundColour `
    -NoNewline
}
else
{
  Write-Host "$currentDirectory " -ForegroundColor $CurrentPathTextColour `
    -BackgroundColor $CurrentPathBackgroundColour `
    -NoNewline
}

$global:transitionColour = $CurrentPathBackgroundColour
