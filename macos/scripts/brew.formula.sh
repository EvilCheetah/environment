FILE=$(realpath "packages/brew.formula.env")

echo $FILE

# Check file
if [ ! -f "$FILE" ]; then
    echo "Cask file '$FILE' not found!"
    # exit 1
fi

cat $FILE