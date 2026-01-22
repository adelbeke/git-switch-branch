#!/usr/bin/env zsh

# git-switch-branch ZSH plugin
# Interactive git branch switching with beautiful UI

# Get the directory where this plugin is located
PLUGIN_DIR="${0:A:h}"

# Add the functions directory to fpath for autoloading
fpath=("$PLUGIN_DIR/functions" $fpath)

# Load the main function
autoload -Uz git-switch-branch

# Create convenient aliases
alias gsb='git-switch-branch'
alias gswitch='git-switch-branch'

# Optional: Check for gum installation on first load
if ! command -v gum &> /dev/null; then
    echo "⚠️  git-switch-branch: 'gum' is not installed"
    echo "   Install with: brew install gum"
fi
