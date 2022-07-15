set fish_greeting

function fish_prompt
  echo (set_color green)(prompt_pwd)(set_color normal)'> '
end

set -x EDITOR vim
set -x VISUAL vim
set -x HOMEBREW_NO_ANALYTICS 1
set -x HOMEBREW_NO_ENV_HINTS 1

fish_add_path "$HOME/.bin"
fish_add_path "$HOME/.cargo/bin"
fish_add_path /usr/local/sbin
fish_add_path ".git/safe/../../bin:$PATH"

alias xvim "xargs -o vim"
alias be "bundle exec"
alias glg "git ls-files | grep"

alias ll "ls -lah"
alias ln "ln -v"
alias mkdir "mkdir -p"
alias b "bundle"
alias migrate "bin/rails db:migrate db:rollback && bin/rails db:migrate db:test:prepare"
alias s "rspec"
alias path 'echo $PATH | tr -s ":" "\n"'
alias e "$EDITOR"
alias v "$VISUAL"
alias c "crystal"
alias cf "crystal tool format"
alias cs "crystal spec"
alias cb "crystal build"
alias cr "crystal run"
