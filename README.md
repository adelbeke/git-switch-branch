# 🔀 git-switch-branch

Interactive git branch switching tool for ZSH with a beautiful UI.

![git-switch-branches](https://github.com/user-attachments/assets/6fadadd4-142a-4fa0-af17-e98d34fe4a85)


## Features

- 🎯 **Interactive selection** - Navigate branches with ease using gum
- 📊 **Rich information** - See last commit date, message, and sync status
- 🔄 **Sync status** - View ahead/behind status with remote (↑↓)
- 🛡️ **Safety first** - Warns about uncommitted changes with stash option
- ⚡ **Fast navigation** - Keyboard-driven interface with search
- 🌐 **Remote branches** - Optionally include and checkout remote branches
- 🎨 **Beautiful UI** - Clean, modern interface with colors

## Installation

### Prerequisites

Install [gum](https://github.com/charmbracelet/gum):

```bash
brew install gum
```

### Oh My Zsh

1. Clone this repository into Oh My Zsh's custom plugins directory:

```bash
git clone https://github.com/adelbeke/git-switch-branch.git \
    $ZSH_CUSTOM/plugins/git-switch-branch
```

2. Add the plugin to your `.zshrc`:

```bash
plugins=(... git-switch-branch)
```

3. Reload your shell:

```bash
source ~/.zshrc
```

### Manual Installation (Any ZSH)

1. Clone the repository:

```bash
git clone https://github.com/adelbeke/git-switch-branch ~/git-switch-branch
```

2. Source the plugin in your `.zshrc`:

```bash
source ~/git-switch-branch/git-switch-branch.plugin.zsh
```

3. Reload your shell:

```bash
source ~/.zshrc
```

## Usage

### Basic Usage

```bash
git-switch-branch
```

Or use the short aliases:

```bash
gsb        # Short alias
gswitch    # Alternative alias
```

### Options

```bash
git-switch-branch [OPTIONS]

OPTIONS:
    -r, --remote    Include remote branches in selection
    -c, --create    Create and switch to a new branch
    -s, --stash     Auto-stash changes before switching
    -t, --recent    Sort by most recently checked out
    -h, --help      Show help message
    -v, --version   Show version
```

### Examples

**Simple branch switch:**
```bash
git-switch-branch
```

**Include remote branches:**
```bash
git-switch-branch --remote
gsb -r
```

**Auto-stash uncommitted changes:**
```bash
git-switch-branch --stash
gsb -s
```

**Create new branch:**
```bash
git-switch-branch --create
gsb -c
```

**Sort by recent activity:**
```bash
git-switch-branch --recent
gsb -t
```

## How It Works

1. **Checks for uncommitted changes** - Warns you if you have uncommitted work
2. **Lists branches** - Shows local (and optionally remote) branches
3. **Displays metadata** - Shows commit date, message, and sync status
4. **Interactive selection** - Use arrow keys or search to find your branch
5. **Safe switching** - Performs the git checkout with proper error handling

## Branch Information Display

For each branch, you'll see:

- **Branch name** - The full branch name
- **Last commit time** - Relative time (e.g., "2 hours ago")
- **Sync status** - ↑X ↓Y showing commits ahead/behind remote
- **Last commit message** - Truncated to 50 characters

## Safety Features

- **Uncommitted changes warning** - Alerts you before switching with dirty working tree
- **Stash option** - Offers to stash changes or use `--stash` flag
- **Confirmation prompts** - Ask before potentially destructive operations
- **Clear error messages** - Helpful feedback when operations fail
- **Remote tracking** - Shows sync status to prevent surprises

## Troubleshooting

### "gum: command not found"

Install gum:
```bash
brew install gum
```

### "Not in a git repository"

Make sure you're inside a git repository:
```bash
cd /path/to/your/git/repo
```

### Uncommitted changes preventing switch

Use the stash option:
```bash
git-switch-branch --stash
```

Or manually stash:
```bash
git stash
git-switch-branch
git stash pop
```

## Companion Plugin

Pair this with [git-clean-branches](https://github.com/adelbeke/git-clean-branches) for complete branch management:
- **git-switch-branch** - Navigate between branches
- **git-clean-branches** - Delete old branches interactively

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

MIT License - see LICENSE file for details

## Credits

Built with:
- [gum](https://github.com/charmbracelet/gum) - A tool for glamorous shell scripts
- ZSH - The Z shell

---

Made with ❤️ for developers who love efficient workflows
