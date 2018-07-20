if status --is-login
  set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
  set -x GPG_TTY (tty)
  echo UPDATESTARTUPTTY | gpg-connect-agent > /dev/null
end
