#!/bin/sh

######################################################################
# Load functions
######################################################################
export ZSH_DIR="$HOME/.config/zsh"
source "$ZSH_DIR/zsh-functions"

######################################################################
# Plugins
######################################################################

# Theming
zsh_add_plugin romkatv/powerlevel10k
zsh_add_file .p10k.zsh
zsh_apply_colors nordtheme/dircolors

zsh_add_plugin zsh-users/zsh-autosuggestions
zsh_add_plugin zsh-users/zsh-syntax-highlighting # Must be last plugin

######################################################################
# Completion
######################################################################
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true # show . and .. in cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;32

######################################################################
# Main opts
######################################################################
setopt append_history inc_append_history share_history
setopt auto_menu menu_complete
setopt autocd
setopt auto_param_slash
setopt no_case_glob no_case_match
setopt globdots
setopt interactive_comments
stty stop undef # disable accidental ctrl s
unsetopt BEEP  # disable visual bell

######################################################################
# History
######################################################################
HISTFILE="$HOME/.zsh_history"
HISTSIZE=1000000
SAVEHIST=1000000
HISTCONTROL=ignoreboth

######################################################################
# Additional files
######################################################################
zsh_add_file zsh-exports
zsh_add_file zsh-aliases