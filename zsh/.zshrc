autoload -U colors && colors

# ChatGBT as of generate that for linux and BSD compatability as luke's version didn't work (27/07/23).
# export PATH="$PATH:$(find ~/.local/bin -type d -exec printf '%s:' {} + | sed 's/:$//')"
# export PATH="$PATH:$(find ~/bin -type d -exec printf '%s:' {} + | sed 's/:$//')"
# Adds `~/.local/bin` to $PATH
# export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export PATH=~/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/sbin:/usr/sbin:/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/bin:$PATH

# Variables
export EDITOR="nvim"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export DOTFILES="$HOME/.dotfiles"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
export GIT_EDITOR="nvim"
export BROWSER="firefox"

# let control+w only delete one directory of a path, not the whole word
export WORDCHARS='*?_[]~=&;!#$%^(){}'

bindkey -e

PS1="%m:%~%(!.#.$) "                 # prompt

# Aliases
[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"
# alias ls="ls -F"
alias \
	ls="ls -hNF --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi" \
	ip="ip -color=auto"

# Edit line in vim with Meta-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^[e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^[e' edit-command-line
bindkey -M visual '^[[P' vi-delete