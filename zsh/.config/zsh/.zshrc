# zmodload zsh/zprof

zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

eval $(dircolors $XDG_CONFIG_HOME/dircolors/gruvbox-dark)

# Completion
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true # show . and .. in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 'ma=38;5;3'

# Main opts
setopt append_history inc_append_history share_history
setopt auto_menu menu_complete
setopt autocd
setopt auto_param_slash
setopt no_case_glob no_case_match
setopt interactive_comments
stty stop undef # disable accidental ctrl s
unsetopt BEEP  # disable visual bell

# History
HISTFILE="$XDG_CACHE_HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
HISTCONTROL=ignoreboth

source "$XDG_CONFIG_HOME/zsh/zsh-exports"
source "$XDG_CONFIG_HOME/zsh/zsh-aliases"
source "$XDG_CONFIG_HOME/zsh/zsh-functions"

# Plugins
zsh_add_plugin romkatv/powerlevel10k
source "$XDG_CONFIG_HOME/zsh/.p10k.zsh"

zsh_add_plugin jeffreytse/zsh-vi-mode
ZVM_SYSTEM_CLIPBOARD_ENABLED=true

zsh_add_plugin zsh-users/zsh-autosuggestions
zsh_add_plugin zsh-users/zsh-syntax-highlighting # Must be last plugin

# zprof
