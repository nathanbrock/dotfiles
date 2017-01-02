# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

. ~/.dotfiles/system/getSleepType.sh --source-only

alias sleepy='getSleepType && pmset sleepnow'
alias sleepsafe='sudo pmset -a destroyfvkeyonstandby 1 hibernatemode 25 && sleepy'
alias sleepfast='sudo pmset -a hibernatemode 0 && sleepy'
alias sleepdefault='sudo pmset -a hibernatemode 3 && sleepy'