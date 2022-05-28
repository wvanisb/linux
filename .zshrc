# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistfile
HISTSIZE=2000
SAVEHIST=9999
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/will/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#
source $HOME/.zprofile
export MPLAYER='mpv'
export BROWSER='firefox'
export TERM='alacritty'
export EDITOR='nvim'
export XDG_CONFIG_HOME='/home/will/.config/'
export loginuser='will'
alias logout='loginctl kill-user $loginuser'

# Neovim
alias vim='nvim'
alias v='nvim'
# exa over ls
alias ll='exa -alFh'
alias dir='exa'
alias ls='exa -l'
# zoxide
alias cd='z'

# reconfiguring shortcuts
alias sourcezsh='source $HOME/.zshrc'
alias rczsh='nvim $HOME/.zshrc'

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


eval "$(zoxide init zsh)"
eval "$(starship init zsh)"


