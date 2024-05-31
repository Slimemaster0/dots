fastfetch

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v
export KEYTIMEOUT=1
export DATA_DIR=$HOME/.local/share

export EDITOR="nvim"
export BAT_THEME="TwoDark"

export CC=gcc
export CXX=g++

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# seting the terminal type
export TERM="xterm-kitty"

### "bat" as manpager 
export MANPAGER="moar"

#sources
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
export SUDO_USER=slimemaster

# Aliases

alias ll="exa -al --icons"
alias ls="exa --icons"
alias sl="exa --icons"
alias clea="clear"
alias ckear="clear"
alias ckea="clear"
alias claer="clear"
alias polkit-gnome=/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
alias icat="kitty +kitten icat"
alias v=nvim
alias gustpak="wine ~/gust\ tools/gust_pak.exe"
alias wifi_init="doas sh -c 'ifconfig wlp5s0 up; sleep 5; wpa_supplicant -B -i wlp5s0 -c /etc/wpa_supplicant/wpa_supplicant.conf'"

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

export MAKEFLAGS="-j16"
export CFLAGS="-march=native -mtune=native -O2"
export CXXFLAGS="$CFLAGS"
fpath=($fpath "$HOME/.zfunctions")

source "$HOME/.zsh plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

source $HOME/.zsh\ plugins/sourcerc.zsh
source $HOME/.zsh\ plugins/syntax-style.zsh

eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
