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

set -U fish_user_paths "$HOME/.bin" $fish_user_paths
set -U fish_user_paths /usr/local/sbin $fish_user_paths

alias xvim "xargs -o vim"
alias be "bundle exec"
alias glg "git ls-files | grep"
alias ll "ls -lah"
alias ln "ln -v"
