# Dotfiles

Personal configuration files managed with [Chezmoi](https://www.chezmoi.io/) for consistent development environment across machines.

## Quick Start

```bash
# Install Chezmoi (if not installed)
sh -c "$(curl -fsLS get.chezmoi.io)"

# Initialize from this repository
chezmoi init git@github.com:goodbadwolf/dotfiles.git

# Preview changes
chezmoi diff

# Apply configurations
chezmoi apply
```

## Included Configurations

### Terminal & Shell

- **Zsh** with Oh-My-Zsh framework (robbyrussell theme)
- **Tmux** terminal multiplexer with vim-style keybindings
- **Alacritty** GPU-accelerated terminal emulator

### Development Editors

- **Vim** powered by [The Ultimate vimrc](https://github.com/amix/vimrc)
  - Custom settings in `dot_vim_runtime/my_configs.vim`
- **Neovim**

### Command-Line Tools

- **fzf** - Fuzzy finder for files and commands
- **zoxide** - Smarter cd command that learns your habits
- **ripgrep** - Fast recursive search tool
- **Miniconda** - Python environment management

## Repository Structure

```
.
├── dot_oh-my-zsh/
│   └── custom/           # Modular zsh configurations
│       ├── completions/  # Shell completions
│       └── executable_*  # Auto-loaded zsh modules
├── dot_tmux.conf         # Tmux configuration
├── dot_vim_runtime/      # Ultimate vimrc customizations
│   └── my_configs.vim    # Personal vim settings
├── dot_zshenv            # Zsh environment setup
└── private_dot_config/   # Application configs
    ├── alacritty/        # Terminal emulator
    └── nvim/             # Neovim configuration
```

## Platform Support

Configurations automatically adapt for:

- **Linux** - X11 integration, xdg-open mappings
- **macOS** - Apple Silicon support, Homebrew paths

Platform detection happens at runtime, so the same configuration works across different systems.

## Key Features

### Smart Directory Navigation

- `cd` is replaced with `zoxide` for intelligent directory jumping
- `z <partial-name>` jumps to frequently/recently used directories

### Unified File Opening

- `mopen` command works across platforms
- Opens files/URLs with the system's default application

### Development Tool Integration

- Python virtual environment indicators
- Git status in prompt
- Syntax highlighting and auto-suggestions

## Customization

### Adding New Configurations

1. Place files in Chezmoi source directory
2. Use appropriate prefixes:
   - `dot_` for dotfiles
   - `private_` for sensitive files (600 permissions)
   - `executable_` for scripts

### Platform-Specific Code

Create separate files:

- `*_linux.zsh` for Linux-specific settings
- `*_macos.zsh` for macOS-specific settings
- `*_common.zsh` for shared settings

## Maintenance

```bash
# Update from remote
chezmoi update

# Edit configuration
chezmoi edit <file>

# Add new file to management
chezmoi add <file>

# See managed files
chezmoi managed
```

## License

Personal configuration files - feel free to use and adapt.
