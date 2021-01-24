while read kw; do
    mkdir -p  "$kw"
    cd "$kw"
    google "$kw" --num 2 --output-file "$(date '+%Y-%m-%d')"
    cd ..
done <keywords.txt
