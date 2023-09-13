setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v
export KEYTIMEOUT=1

export EDITOR="nvim"
export BAT_THEME="TwoDark"

export BIN=/opt/msvc/bin/x64

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

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
#source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#sources
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/usr/lib/llvm14/bin:$PATH"
export PATH="/opt/msvc/bin/x64:$PATH"
#export PATH="/usr/bin:$PATH"


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
alias gustpak=wine ~/gust\ tools/gust_pak.exe

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

export MAKEFLAGS=j16
fpath=($fpath "$HOME/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
#prompt spaceship

source "$HOME/.zsh plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

source $HOME/.zsh\ plugins/sourcerc.zsh
source $HOME/.zsh\ plugins/syntax-style.zsh


fastfetch --load-config "$HOME/.config/fastfetch/config.conf" --logo ~/.icons/arch.png
