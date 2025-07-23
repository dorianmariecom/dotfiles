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
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
set -x EDITOR vim
set -x VISUAL vim

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

alias gist "gh gist create"
alias xvim "xargs -o vim"

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $HOME/.bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

set -gx --prepend PATH "$HOME/.asdf/shims"

# Added by Windsurf
fish_add_path /Users/dorianmariefr/.codeium/windsurf/bin
