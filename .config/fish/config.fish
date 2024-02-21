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

fish_add_path $HOME/.bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

alias be "bundle exec"
alias bootstrap "bin/bootstrap"
alias console "kamal app exec -i 'bin/rails console'"
alias deploy "bin/deploy"
alias dev "bin/dev"
alias glg "git ls-files | grep"
alias ll "ls -lah"
alias ln "ln -v"
alias rails "bundle exec rails"
alias rake "bundle exec rake"
alias rspec "bundle exec rspec"
alias xvim "xargs -o vim"

source ~/.asdf/asdf.fish
