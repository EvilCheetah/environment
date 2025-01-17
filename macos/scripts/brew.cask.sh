FILE=$(realpath "packages/brew.cask.env")


# Check file
if [ ! -f "$FILE" ]; then
    echo "Cask file '$FILE' not found!"
    # exit 1
fi


# Iterate over `cask` applications in $FILE
while IFS= read -r app || [ -n "$app" ]; do
    # Skip empty lines and lines that start with `#`
    if [ -z "$app" ] || [ "${app#\#}" != "$app" ]; then
        continue
    fi

    echo "Installing cask: $app"
    brew install --cask "$app"

    # Check if the installation was successful
    if [ $? -ne 0 ]; then
        echo "Failed to install cask: $app"
    else
        echo "Successfully installed: $app"
    fi
done < "$FILE"