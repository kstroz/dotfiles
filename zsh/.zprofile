#!/bin/sh

# System defaults
export EDITOR="nvim"
export BROWSER="brave"
export TERMINAL="ghostty"
export MANPAGER="nvim +Man!"

# XDG Paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Add to $PATH
export PATH="$PATH:$HOME/.local/bin"

case "$(uname -s)" in
  Linux) eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" ;;
  Darwin) eval "$(/opt/homebrew/bin/brew shellenv)" ;;
esac

export PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"

# Cleanup
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HOMEBREW_BUNDLE_FILE="$XDG_CONFIG_HOME/brew/.Brewfile"
export PYTHON_HISTORY="$XDG_CACHE_HOME/.python_history"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Other settings
export BAT_THEME="gruvbox-dark"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1
export FZF_DEFAULT_OPTS="\
  --style minimal \
  --layout=reverse \
  --border=bold \
  --margin=4% \
  --color=border:#a89984 \
  --color=fg:#ebdbb2 \
  --color=fg+:#ebdbb2 \
  --color=bg+:#32302f \
  --color=info:#928374 \
  --color=spinner:#b8bb26 \
  --color=hl:#fe8019 \
  --color=hl+:#fe8019 \
  --color=pointer:#fb4934 \
  --color=marker:#d3869b \
  --color=gutter:#a89984 \
  --color=prompt:#ebdbb2 \
  --prompt='[$] ' \
  --bind ctrl-b:preview-half-page-up,ctrl-f:preview-half-page-down \
  --preview='bat --color=always {}' \
"
export FZF_CTRL_R_OPTS="--no-preview"
