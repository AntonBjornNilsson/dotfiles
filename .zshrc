export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh

# Paths
export PATH=$HOME/bin:$PATH
export PATH=/home/$USER/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# ZSH

# Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# Alias
alias oneline="git log --oneline --graph --decorate --all"
alias k=kubectl
alias f=flux

# Source
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(kubectl completion zsh)
source <(flux completion zsh)

eval "$(starship init zsh)"
fastfetch