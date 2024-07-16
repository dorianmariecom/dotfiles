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
set -x OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
set -x VISUAL vim
set -x LAGO_PATH /Users/dorianmariefr/src/getlago/lago
set -x GPG_TTY (tty)

fish_add_path $HOME/.bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

alias be "bundle exec"
alias deploy "bin/deploy"
alias dev "bin/dev"
alias glg "git ls-files | grep"
alias importmap "bin/importmap"
alias kamal "bin/kamal"
alias ll "ls -lah"
alias ln "ln -v"
alias pr "gh pr view --web"
alias rails "bundle exec rails"
alias rake "bundle exec rake"
alias repo "gh repo view --web"
alias rspec "bundle exec rspec"
alias t "bundle exec rails test"
alias xvim "xargs -o vim"

source ~/.asdf/asdf.fish
