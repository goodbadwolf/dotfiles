# Install path - https://github.com/beyimjan/shell-whiz

SCRIPT_PATH=$(dirname ${(%):-%x})
export OPENAI_API_KEY=$(cat $SCRIPT_PATH/sw-key.txt)

whiz-shell() {
  MODEL_NAME="gpt-4o"
  TMPFILE=$(mktemp)
  trap 'rm -f $TMPFILE' EXIT
  if sw ask --model="$MODEL_NAME" -o "$TMPFILE" "$@"; then
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
