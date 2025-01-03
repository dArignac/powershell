# Docker
function dcc { docker ps -aq -f "status=exited" | ForEach-Object { docker rm $_ } }
function dcp { docker-compose @args }
function dps { docker ps -a }
function di { docker images }

# Git
function g2m { git checkout main }
function gb { git branch -a }
function gicm {
  param(
    [string]$message
  )
  git commit -m $message
}
function gipu { git push }
function gis { git status }
function gpso { git push origin }



# oh-my-posh https://ohmyposh.dev
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/gruvbox.omp.json" | Invoke-Expression