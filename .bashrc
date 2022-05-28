#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME='/home/will/.config/'
export loginuser='will'
alias logout='loginctl kill-user $loginuser'

# Neovim
alias vim='nvim'
alias v='nvim'
# exa over ls
alias ll='exa -alFh'
alias ls='exa'
# zoxide
alias cd='z'

# reconfiguring shortcuts
alias sourcebash='source $HOME/.bashrc'
alias rcbash='nvim $HOME/.bashrc'

# navigation
alias suckless='cd $HOME/.clones/suckless'

# git cloning shortcut
alias gclone='cd $HOME/.clones && git clone'

# sudo is bloat, using doas instead
alias sudo='doas'

# pacman aliases
alias pacs='doas pacman -S'
alias pacss='pacman -Ss'
alias pacy='doas pacman -Syy'
alias pacu='doas pacman -Syyu'
alias pacq='doas pacman -Q'
alias pacr='doas pacman -R'
alias pacrrr='doas pacman -Rdd'
alias mneo='clear && printf "%s\n\n" && neofetch | lolcat && printf "%s\n"'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
