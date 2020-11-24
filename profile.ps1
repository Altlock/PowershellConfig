# Check if Admin. If so make prompt red.
if($Host.UI.RawUI.WindowTitle -like "*administrator*")
{
$Host.UI.RawUI.ForegroundColor = "Red"
$Host.UI.RawUI.WindowTitle = "ADMINISTRATOR - PowerShell"
}
else { 
$Host.UI.RawUI.ForegroundColor = "Cyan"
}

# Built-in, default PowerShell prompt
function prompt {
    "PS $($ExecutionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
}

# Colored folder listing
Set-Alias dir Get-ChildItemColor -option AllScope -Force
Set-Alias ls Get-ChildItemColor -option AllScope -Force

Set-Alias ssh New-SSHSession

Remove-Item alias:curl alias:wget
