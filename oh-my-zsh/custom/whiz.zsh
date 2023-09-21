# Install path - https://github.com/searchableguy/whiz

SCRIPT_PATH=$(dirname ${(%):-%x})
export OPENAI_API_KEY=$(cat $SCRIPT_PATH/whiz-key.txt)
export WHIZ_LLM_MODEL=gpt-4
