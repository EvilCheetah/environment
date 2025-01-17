FILE=$(realpath "packages/brew.cask.env")

echo $FILE

# Check file
if [ ! -f "$FILE" ]; then
    echo "Cask file '$FILE' not found!"
    # exit 1
fi

cat $FILE