# C:\Users\kevst\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1

Invoke-Expression (&starship init powershell)

######################################
### alias agrupados por aplicacion ###
######################################

# ---- neovim ----

function v{nvim @args}

# ---- git ----

function g{git @args}
function gst{git status}
function gc{git commit @args}
function ga{git add @args}
function gpl{git pull @args}
function gpom{git pull origin master}
function gpu{git push @args}
function gpuom{git push origin master}
function gd{git diff @args}
function gch{git checkout @args}
function gnb{git checkout -b @args}
function gac{git add . && git commit @args}
function grs{git restore --staged .}
function gre{git restore @args}
function gr{git remote @args}
function gcl{git clone @args}
function glm{git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all @args}
function glg{git log --graph --abbrev-commit --decorate --format=format:'%C(bold green)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold yellow)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all -5}
function grm{git remote @args}
function gb{git branch @args}
function gm{git merge @args}
function gf{git fetch @args}

# ---- exa ----

New-Alias -Name l -Value "ls"
