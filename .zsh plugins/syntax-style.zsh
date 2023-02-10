# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

# To disable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='fg=bold'

# misspeld commands
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'

# commands
ZSH_HIGHLIGHT_STYLES[arg0]="fg=blue,bold"
