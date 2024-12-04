# Docker
function dps { docker ps -a }


# Git
function gb { git branch -a }
function gicm {
  # different than in zsh
  param(
    [string]$message
  )
  git commit -m $message
}
function gis { git status }
function gpso { git push origin }