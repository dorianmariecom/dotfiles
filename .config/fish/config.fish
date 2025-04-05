set fish_greeting

function fish_prompt
  echo (set_color green)(prompt_pwd)(set_color normal)(
    if test (id -u) -eq 0
      echo "# "
    else
      echo "> "
    end
  )
end

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x EDITOR vim
set -x GPG_TTY (tty)
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
set -x PNPM_HOME $HOME/Library/pnpm
set -x VISUAL vim

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $HOME/.bin
fish_add_path $HOME/Library/pnpm
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

alias gist "gh gist create"
alias xvim "xargs -o vim"

source ~/.asdf/asdf.fish
