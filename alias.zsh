# Zsh
set -o vi
export EDITOR=nvim
alias sz='source ~/.zshrc'
alias sr='sesh connect root'

# Helpers
alias wr='cd ~/workspace/repositories'
alias wri='cd ~/workspace/repositories/it-engineering/its-adp'
alias wrn='cd ~/workspace/repositories/notes/'
alias c='clear'
alias lg=lazygit

alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias vm='nvim'

# Not sure what to call these things
alias l="eza --all --oneline --long --no-user --group-directories-first --ignore-glob .git --icons=always"
alias lt='l --tree'
alias sd="wr && cd \$( fd --type directory --hidden --exclude .git | fzf )"
alias cl="clear"
alias y="yazi"
alias t="task"

# tasks
#alias t='task'
alias tsg="task \$(task --global --list-all --silent | fzf)"
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
alias cha='ch apply && sz'

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# notes
alias n="cd ~/workspace/maowen-archive/ && nvim "+ObsidianSearch" README.md && cd -"
alias nt="cd ~/workspace/maowen-archive/ && nvim TASKS.md && cd -"

