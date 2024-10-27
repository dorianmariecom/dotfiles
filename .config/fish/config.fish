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
set -x GPG_TTY (tty)

fish_add_path $HOME/.bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/sbin

alias gist "gh gist create"
alias pr "gh pr view --web"
alias repo "gh repo view --web"
alias xvim "xargs -o vim"
alias whitespace "sed 's/ /·/g;s/\t/￫/g;s/\r/§/g;s/\$/¶/g'"

source ~/.asdf/asdf.fish
