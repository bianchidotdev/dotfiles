# Default Editors
export EDITOR=vim
export VISUAL=vim

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.google-cloud-sdk/bin:$PATH

source ~/.config/antigen.zsh
source ~/.zsh_aliases
source ~/.zsh_functions


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
#antigen bundle git
#antigen bundle pip
#antigen bundle command-not-found
#antigen bundle cargo
#antigen bundle colored-man-pages
antigen bundle compleat
#antigen bundle docker
#antigen bundle git-flow
#antigen bundle mix
#antigen bundle npm
antigen bundle osx
#antigen bundle rails
antigen bundle rbenv
#antigen bundle terraform
#antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# Tell Antigen that you're done.
antigen apply

# Load the theme
eval "$(starship init zsh)"

# Custom
#bindkey "^[^[[D" backward-word
#bindkey "^[^[[C" forward-word
#eval $(op signin my)

