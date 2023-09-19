SCRIPT_PATH=$(dirname ${(%):-%x})
export ZSH_ASK_API_KEY=$(cat $SCRIPT_PATH/zsh-ask-key.txt)
export ZSH_ASK_MODEL="gpt-4"
export ZSH_ASK_TOKENS=8192
export ZSH_ASK_INHERITS=true
