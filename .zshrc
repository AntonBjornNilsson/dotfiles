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
alias protontricks='flatpak run com.github.Matoking.protontricks'
alias protontricks-launch='flatpak run --command=protontricks-launch com.github.Matoking.protontricks'

# Source
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(kubectl completion zsh)
source <(flux completion zsh)

eval "$(starship init zsh)"
fastfetch

export OLLAMA_API_BASE="http://192.168.21.41:11434"
export MODEL="ollama_chat/aravhawk/gemma4:26b"
export OVERRIDE_MAX_CONTENT_SIZE="128000"
export OVERRIDE_MAX_OUTPUT_TOKEN="256000"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
