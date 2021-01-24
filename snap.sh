while read kw; do
    mkdir -p  "$kw"
    cd "$kw"
    google "$kw" --num 20 --output-file "$(date '+%Y-%m-%d')"
    cd ..
done <keywords.txt
