# C:\Users\kevst\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1

Invoke-Expression (&starship init powershell)

######################################
### alias agrupados por aplicacion ###
######################################

# ---- neovim ----

function v{nvim @args}

# ---- git ----

function Get-GitCommand { & git $args }
New-Alias -Name g -Value Get-GitCommand

function Get-GitStatus { & git status }
New-Alias -Name gst -Value Get-GitStatus

Remove-Alias -Name gc -Force
function Set-GitCommit { & git commit $args }
New-Alias -Name gc -Value Set-GitCommit

function Get-GitAdd{ & git add $args }
New-Alias -Name ga -Value Get-GitAdd

function Get-GitPull { & git pull $args }
New-Alias -Name gpl -Value Get-GitPull

function Set-GitPush { & git push $args }
New-Alias -Name gpu -Value Set-GitPush

function Get-GitDiff{ & git diff $args }
New-Alias -Name gd -Value Get-GitDiff

function Get-GitCheckout{ & git checkout $args }
New-Alias -Name gch -Value Get-GitCheckout

function Set-GitAddAndCommit { & git add . && git commit $args }
New-Alias -Name gac -Value Set-GitAddAndCommit

function Set-GitRestore { & git restore $args }
New-Alias -Name gre -Value Set-GitRestore

function Get-GitRemote { & git remote $args }
New-Alias -Name gr -Value Get-GitRemote

function Get-GitLog { 
    git log `
        --graph `
        --abbrev-commit `
        --decorate `
        --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' `
        --all $args 
}
New-Alias -Name glg -Value Get-GitLog

function Get-GitRemote { & git remote $args }
New-Alias -Name grm -Value Get-GitRemote

function Get-GitBranch { & git branch $args }
New-Alias -Name gb -Value Get-GitBranch

function Get-GitMerge { & git merge $args }
New-Alias -Name gm -Value Get-GitMerge

# ---- eza ----

function Get-Files { & eza -l $args }
New-Alias -Name l -Value Get-Files

function Get-Files-All { & eza -la $args }
New-Alias -Name la -Value Get-Files-All

function Show-Tree { & eza -T $args }
New-Alias -Name t -Value Show-Tree