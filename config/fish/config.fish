source ~/.iterm2_shell_integration.(basename $SHELL)
set -x GPG_TTY (tty)
set -x SSH_AUTH_SOCK ~/.gnupg/S.gpg-agent.ssh
gpgconf --launch gpg-agent
