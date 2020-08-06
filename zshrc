# Default Editors
export EDITOR=vim
export VISUAL=vim

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/.google-cloud-sdk/bin:$PATH
export PATH=$PATH:$HOME/go/bin

source ~/.config/antigen.zsh
source ~/.zsh_aliases
source ~/.zsh_functions
source ~/.zsh_vars

if [[ -r ~/.sumo_creds ]]; then
	source ~/.sumo_creds
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/michaelbianchi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/michaelbianchi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/michaelbianchi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/michaelbianchi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source $(brew --prefix asdf)/asdf.sh
#source $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash

export DOCKER_BUILDKIT=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# Start gpg-agent
gpgconf --launch gpg-agent
export PATH="$HOME/.harold/bin:$PATH"
