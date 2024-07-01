# Zsh
export EDITOR=nvim
alias sz='source ~/.zshrc'

# Helpers
alias wr='cd ~/workspace/repositories'
alias wri='cd ~/workspace/repositories/it-engineering/its-adp'
alias wrn='cd ~/workspace/repositories/notes/'
alias c='code .'
alias lg=lazygit
alias v='nvim .'

# Zellij
alias z="zellij"
alias zls="zellij list-sessions --short"
alias zd="zellij delete-session \$( zellij list-sessions --short | fzf )"
alias zk="zellij kill-session \$( zellij list-sessions --short | fzf )"
alias za="zellij attach \$( zellij list-sessions --short | fzf )"

# Not sure what to call these things
alias l="eza --all --oneline --long --no-user --group-directories-first --ignore-glob .git --icons=always"
alias lt='l --tree'
alias sd="wr && cd \$( fd --type directory --hidden --exclude .git | fzf )"
alias cl="clear"
alias y="yazi"

# tasks
#alias t='task'
alias t="task \$(task --global --list-all --silent | fzf)"
alias tsl="task \$(task --list-all --silent | fzf)"

# Terraform
alias tf=terraform
alias tfi='terraform init'
alias tfa='terraform apply -auto-approve'
alias tfd='terraform destroy -auto-approve'
alias tfp='terraform plan'
alias tfv='tf version'

# Terragrunt
alias tg=terragrunt
alias tgi='terragrunt init'
alias tgp='terragrunt plan'
alias tga='terragrunt apply -auto-approve'

# Kubernetes
alias k=kubectl
alias kp='kubectl get po'
alias kc='kubectl config get-contexts'
alias kcd='kubectl config use-context dev'
alias kcs='kubectl config use-context stg'
alias kcp='kubectl config use-context prd'

# Chezmoi
alias ch='chezmoi'
alias cha='ch -v apply && sz'

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# dotfiles
alias che=dotfiles-session
function dotfiles-session ()
{
  cd ~/.local/share/chezmoi/
  if [[ ! $(zellij list-sessions --short | grep 'dotfiles') ]]; then
    zellij --session dotfiles
  else
    zellij attach dotfiles
  fi
  cd -
}

alias vm='NVIM_APPNAME="nvim-maowen" nvim'

# notes
alias n="task --global zettel:open"
alias nt="task --global zettel:open:tasks"

zellij-session ()
{
  local session_name
  local session_directory
  cd ~/workspace/repositories/
  session_directory=$( fd --type directory --hidden --exclude .git | fzf )
  session_name=$(basename $session_directory)
  if [[ ! $(zellij list-sessions --short | grep $session_name) ]]; then
    zellij attach --create-background $session_name options --default-cwd $session_directory
  fi
  zellij attach $session_name
cd -
}
alias s=zellij-session
