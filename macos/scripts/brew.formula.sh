FILE=$(realpath "packages/brew.formula.env")


# Check file
if [ ! -f "$FILE" ]; then
    echo "Formula file '$FILE' not found!"
    # exit 1
fi


# Iterate over `formula` applications in $FILE
while IFS= read -r app || [ -n "$app" ]; do
    # Skip empty lines and lines that start with `#`
    if [ -z "$app" ] || [ "${app#\#}" != "$app" ]; then
        continue
    fi

    echo "Installing formula: $app"
    brew install "$app"

    # Check if the installation was successful
    if [ $? -ne 0 ]; then
        echo "Failed to install formula: $app"
    else
        echo "Successfully installed: $app"
    fi
done < "$FILE"