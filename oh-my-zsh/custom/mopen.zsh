mopen() {
    if [ $# -eq 0 ]; then
        echo "Usage: mopen file1 [file2 ...]"
        return 1
    fi

    for file in "$@"; do
        if [ ! -e "$file" ]; then
            echo "Error: File not found: $file"
            continue
        fi

        if [[ "$OSTYPE" == "darwin"* ]]; then
            # macOS
            open "$file"
        elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
            # Linux
            xdg-open "$file" &> /dev/null &
        else
            echo "Unsupported operating system"
            return 1
        fi
    done
}
