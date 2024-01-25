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

set -x EDITOR vim
set -x VISUAL vim
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1
set -x ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -x LDFLAGS "-L/opt/homebrew/opt/libpq/lib"
set -x CPPFLAGS "-I/opt/homebrew/opt/libpq/include"

fish_add_path $HOME/.bin
fish_add_path /usr/local/sbin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path $ANDROID_SDK_ROOT/emulator
fish_add_path $ANDROID_SDK_ROOT/platform-tools

alias xvim "xargs -o vim"
alias be "bundle exec"
alias glg "git ls-files | grep"
alias ll "ls -lah"
alias ln "ln -v"
alias c "pygmentize -g"
alias release "set gems *.gem; rm -f \$gems; gem build; gem push *.gem; rm *.gem"

source ~/.asdf/asdf.fish
