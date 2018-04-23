# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [[ -s "${ZDOTDIR:-$HOME}/.zsh_aliases" ]]; then
	source "${ZDOTDIR:-$HOME}/.zsh_aliases"
fi

# Default Editors
export EDITOR=vim
export VISUAL=vim

# GOPATH
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$(go env GOPATH)/bin

# The next line updates PATH for the Google Cloud SDK.
if [[ -s "${ZDOTDIR:-$HOME}/google-cloud-sdk/path.zsh.inc" ]]; then
	source "${ZDOTDIR:-$HOME}/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [[ -s "${ZDOTDIR:-$HOME}/google-cloud-sdk/completion.zsh.inc" ]]; then
	source "${ZDOTDIR:-$HOME}/google-cloud-sdk/completion.zsh.inc"
fi
