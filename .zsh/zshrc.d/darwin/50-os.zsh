
## macOS specific options

# OS X ls colour
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls -Gh'

# OS X Path
path+=(
    /opt/local/bin
    $HOME/Library/Python/3.10/bin
) 

# OS X Leopard is fucky with these keybinds
bindkey '^[[5C' forward-word
bindkey '^[[5D' backward-word