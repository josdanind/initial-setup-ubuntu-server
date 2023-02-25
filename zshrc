# Linux antigen file
source /usr/share/zsh-antigen/antigen.zsh

# Alias
alias vim=nvim
alias vi=nvim

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repository
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle lukechilds/zsh-nvm

# Load the theme
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done.
antigen apply
