## Global Settings ##
# Define icons
$global:triangleIcon = ''
$global:branchIcon = ''
$global:lockIcon = ''
$global:homeIcon = ' '
$global:gitIcon = 'ﯙ'
$global:lightningIcon = 'ﯓ'
$global:squareIcon = 'ﭳ'
$global:vscodeIcon = '﬏'
$global:windowsIcon = '者'
$global:ubuntuIcon = '漢'
$global:skullIcon = 'ﮊ'
$global:sadFaceIcon = 'ﮙ'
$global:happyFaceIcon = ''
$global:asteriskIcon = '﯂'
$global:xIcon = '﯇'
$global:ShortenedDirectoryIcon = ''

# Decorator settings
$global:startDecorator = $triangleIcon
$global:EndDecorator = $triangleIcon

# Define  colours
$global:errorTextColour = 'Red'
$global:warningTextColour = 'DarkYellow'
$global:successTextColour = 'Green'
$global:infoTextColour = 'Blue'
$global:defaultTextColour = 'White'

$global:defaultBackgroundColour = 'Black'

## Module Settings ##
# StatusIndicator
$global:userStatusIcon = $asteriskIcon
$global:adminStatusIcon = $lightningIcon
$global:failedStatusIcon = $xIcon
$global:statusIndicatorBackgroundColour = 'black'

# Current Directory module settings
$global:CurrentPathTextColour = $defaultTextColour
$global:CurrentPathBackgroundColour = 'DarkBlue'
$global:UserHomePathIcon = $homeIcon
$global:maximumPromptLength = 30

# GitStatus
$global:gitBranchBackgroundColour = 'DarkGreen'
$global:gitBranchTextColour = 'DarkGray'
$global:gitMasterBackgroundColour = 'DarkRed'
$global:gitMasterTextColour = 'Gray'

# EndDecorator
## Accepted values: $true, $false, [int]
$global:inputOnNewLine = 50
