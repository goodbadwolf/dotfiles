# Install path - https://github.com/beyimjan/shell-whiz

whiz-shell() {
  MODEL="gpt-4o"
  TMPFILE=$(mktemp)
  trap 'rm -f "$TMPFILE"' EXIT
  CMD="sw ask --model $MODEL -p \"I use zsh on Linux\" -o \"$TMPFILE\" \"$@\""
  if eval "$CMD"; then
    if [ -e "$TMPFILE" ]; then
      SW_CMD=$(cat "$TMPFILE")
      print -s "$SW_CMD"
      eval "$SW_CMD"
    else
      echo "Sorry, something went wrong." >&2
    fi
  else
    return 1
  fi
}

alias swa='whiz-shell'
