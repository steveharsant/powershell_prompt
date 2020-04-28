$isGitRepo = Get-ChildItem -Directory -Hidden | Where-Object {$_.Name -eq ".git"}

if (-not ([string]::IsNullOrEmpty($isGitRepo)))
{
  $branches = git branch

  # Searching for a * has strange results as it is a special character.
  # Changing it to standard characters makes this easier to loop through.
  $branches = $branches.replace('*', 'current_branch')
  $branchCount = $branches.count
  $n = 0

  # Get name of current git branch
  do {
    if($branches[$n] -match 'current_branch')
    {
      $currentBranch = $branches[$n].replace('current_branch', '')
      $global:promptCount = $promptCount + $currentBranch.Length
      break
    }
    $n++
  } until ($n -eq $branchCount)

  if($currentBranch -match 'master')
  {
    # Set master theme settings
    $gitStatusIcon = $gitIcon
    $gitTextColour = $gitMasterTextColour
    $gitBackgroundColour = $gitMasterBackgroundColour
  }
  else
  {
    # Set branch theme settings
    $gitStatusIcon = $branchIcon
    $gitTextColour = $gitBranchTextColour
    $gitBackgroundColour = $gitBranchBackgroundColour
  }

  # Write start decorator
  Write-Host "$startDecorator " `
    -ForegroundColor $transitionColour `
    -BackgroundColor $gitBackgroundColour `
    -NoNewline

  Write-Host " $gitStatusIcon $currentBranch " `
    -ForegroundColor $gitTextColour `
    -BackgroundColor $gitBackgroundColour `
    -NoNewline

    $global:transitionColour = $gitBackgroundColour
}
