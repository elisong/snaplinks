while read kw; do
    mkdir -p "$kw"
    cd "$kw"
    google "$kw" --site github.com --num 20 -o "$(date '+%Y%m%d').md"
    cd ..
done < keywords.txt
