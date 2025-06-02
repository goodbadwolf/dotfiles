# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Chezmoi-managed dotfiles repository. See @README.md for project overview, installation, and structure.

## Bash Commands

```bash
# IMPORTANT: Always use chezmoi edit instead of directly modifying files
chezmoi edit <file>      # Edit configuration file
chezmoi diff             # Preview changes before applying
chezmoi apply            # Apply configuration changes

# Other common commands
chezmoi add <file>       # Add new file to management
chezmoi update           # Update from remote repository
chezmoi managed          # List managed files
```

## Core Files and Utilities

### Environment Loading Sequence

**YOU MUST understand this flow when modifying shell configurations:**

1. **dot_zshenv** (always loaded first)

   - Sources `/etc/profile` for system-wide settings
   - Sets up PATH for CUDA, fzf, nvm
   - Initializes zsh completion system
   - Configures shellcheck directives

2. **dot_oh-my-zsh/custom/** (auto-loaded modules)
   - Each `executable_*.zsh` file is sourced automatically
   - Platform detection in `aliases_linux.zsh` and `aliases_macos.zsh`
   - No dependencies between modules - each is self-contained

### Key Utility Functions

**mopen** (dot_oh-my-zsh/custom/executable_mopen.zsh)

- Cross-platform file/URL opener
- Uses `xdg-open` on Linux, `open` on macOS
- Handles spaces in filenames correctly

**whiz-shell** (dot_oh-my-zsh/custom/executable_python.zsh)

- Creates isolated Python shell environments
- Auto-installs packages on first use
- Includes cleanup trap for temporary directories

### Vim Configuration

**IMPORTANT: This uses The Ultimate vimrc (https://github.com/amix/vimrc)**

- The base configuration is managed externally by Ultimate vimrc
- Personal customizations go in `dot_vim_runtime/my_configs.vim`
- Current customizations:
  ```vim
  set number         " Enable line numbers
  set splitbelow     " New horizontal splits open below
  set splitright     " New vertical splits open to the right
  set autochdir      " Auto change directory to current file
  ```
- To add vim customizations: `chezmoi edit dot_vim_runtime/my_configs.vim`

## Code Style

### Shell Scripts

**YOU MUST follow these conventions:**

- Quote all variables: `"$VAR"` not `$VAR`
- Use `[[ ]]` for conditionals, not `[ ]`
- Include shellcheck disable comments when needed
- Function names: lowercase with underscores
- Environment variables: UPPERCASE

### Platform-Specific Code Pattern

```bash
if [ "$(uname)" = "Linux" ]; then
    # Linux code
elif [ "$(uname)" = "Darwin" ]; then
    # macOS code
fi
```

## Testing Instructions

Before committing changes:

1. Run `shellcheck` on any modified shell scripts
2. Test on both Linux and macOS if changing platform-specific code
3. Verify `chezmoi diff` shows expected changes
4. Apply and test in a new shell session

## Repository Etiquette

### IMPORTANT Rules

1. **NEVER** edit deployed dotfiles directly (e.g., ~/.zshrc)
2. **ALWAYS** use `chezmoi edit` for modifications
3. **AVOID** hardcoded paths - use `$HOME` or relative paths
4. **TEST** platform detection code on both systems

### Adding New Tools

1. Use `chezmoi add <file>` to add (track) new tools

## Unexpected Behaviors

### Chezmoi Naming Conventions

- `dot_` becomes `.` when applied
- `private_` sets 600 permissions
- `executable_` makes files executable
- Underscores in filenames become literal underscores

### Oh-My-Zsh Custom Loading

- Files are sourced in alphabetical order
- Only files matching `*.zsh` are loaded
- The `executable_` prefix doesn't affect loading (it's for Chezmoi)

### Platform Detection Edge Cases

- WSL reports as "Linux" but may need special handling
- Apple Silicon Macs still report "Darwin"
- Some tools install to different locations on different platforms
