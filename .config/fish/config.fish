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
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
set -x LC_ALL en_US.UTF-8
set -x VISUAL vim
set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

alias gist "gh gist create"
alias pat "bat --pager=none"
alias xvim "xargs -o vim"
alias bi "bundle install"
alias bu "bundle update"
alias bua "bundle update --all"

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $HOME/.bin
fish_add_path $HOME/.asdf/shims
fish_add_path $HOME/.asdf/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/opt/python/libexec/bin
fish_add_path /usr/local/sbin
