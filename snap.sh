while read kw; do
    mkdir -p  "$kw"
    cd "$kw"
    search "$kw" --num 30 --output-file "$(date '+%Y-%m-%d')"
    cd ..
done <keywords.txt
