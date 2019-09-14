if [ -f /etc/bashrc ]; then
 . /etc/bashrc
fi

alias ll='ls -Al'
alias s='cd ..'

export EDITOR='vim'
export HISTCONTROL='ignoredups'
export PROMPT_COMMAND='history -a; history -c; history -r'
export PATH="${HOME}/bin:${PATH}"

shopt -s histappend
shopt -s checkwinsize

fancy_prompt() {
  local red=$(tput setaf 208)
  local green=$(tput setaf 2)
  local blue=$(tput setaf 4)
  local purple=$(tput setaf 5)
  local reset=$(tput sgr0)
  export PS1=" \[$green\]\u \[$red\]\w\[$green\]\$(__git_ps1)\n └─▶\[$reset\] "
}

if [ -f /usr/local/share/git-prompt.sh ]; then
  source /usr/local/share/git-prompt.sh
  if [ "$(type -t __git_ps1)" == 'function' ]; then
    fancy_prompt
  fi
fi
