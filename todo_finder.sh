

if [[ $# -ne 1 ]]; then
    echo "The argument count must be 1"
    exit 1
fi

while read file; do
    found=$(grep "TODO" "$file");
    if [[ -n "$found" ]] ; then
        echo "There is todo in file: $file"
        echo "$found"
    fi
done < <(find "$1" -type f -regex ".*$main.c")

