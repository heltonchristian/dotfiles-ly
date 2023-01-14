#PROMPT
#PROMPT='    '
PROMPT='-ly'
PROMPT='%F{white}%1~%f %F{white}%f  '

#RIGHT PROMPT
#RPROMPT='%F{blue}%*'
#RPROMPT='%F{white}%D{%L:%M:%S}'
#TMOUT=1
#TRAPALRM() {
   # zle reset-prompt
#}


autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'


HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Comandos básicos terminal
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'
alias ls='ls --color=auto'
alias rm='rm -r'

#Customres
alias 1440p='nvidia-settings -a CurrentMetaMode="DVI-I-1: 1920X1080_144 {ViewPortIn=1440x1080_144, ViewPortOut=1920x1080, Paining=1440x1080}";bspc wm -r'

alias 1920p='nvidia-settings -a CurrentMetaMode="DVI-I-1: 1920X1080_144 {ViewPortIn=1920x1080_144, ViewPortOut=1920x1080, Paining=1920x1080}";bspc wm -r'



# XBPS -  void #
#alias xr='sudo xbps-remove'
#alias xq='xbps-query -Rs'
#alias xo='sudo xbps-remove -o'
#alias xl='sudo xbps-install'
#alias xu='sudo xbps-install -Su'

# Files

alias kitty='sudo vim .config/kitty/kitty.conf'
alias gtk='sudo vim .config/gtk-3.0/settings.ini'
alias zshrc='sudo vim .zshrc'
alias bashrc='sudo vim .bashrc'
alias bspwmrc='sudo vim .config/bspwm/bspwmrc'
alias sxhkdrc='sudo vim .config/sxhkd/sxhkdrc'
alias rofic='sudo vim ~/.config/rofi/config.rasi'
alias picomc='sudo vim ~/.config/picom/picom.conf'
alias neofetchrc='sudo vim ~/.config/neofetch/config.conf'

# Environment variables set everywhere
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="brave"


# Wallpapers

alias w1='feh --bg-scale ~/wallpaper/1.jpg'
alias w2='feh --bg-scale ~/wallpaper/2.jpg'
alias w3='feh --bg-scale ~/wallpaper/3.jpg'
alias w4='feh --bg-scale ~/wallpaper/4.jpg'
alias w5='feh --bg-scale ~/wallpaper/5.jpg'
alias w6='feh --bg-scale ~/wallpaper/6.jpg'
alias w7='feh --bg-scale ~/wallpaper/7.jpg'
alias w8='feh --bg-scale ~/wallpaper/8.jpg'

#neofetch
alias hh='neofetch'

#python
alias py="python3 -m venv PYcode; source PYcode/bin/activate"

#alias cpy="python3 -m venv PYcode"
#alias py="source PYcode/bin/activate"
