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

fish_add_path $HOME/.bin
fish_add_path /usr/local/sbin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

alias xvim "xargs -o vim"
alias be "bundle exec"
alias glg "git ls-files | grep"
alias ll "ls -lah"
alias ln "ln -v"

source ~/.asdf/asdf.fish
