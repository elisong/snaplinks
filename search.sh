while read kw; do
    mkdir -p  "$kw"
    cd "$kw"
    gsearch "$kw" --num 30 --output-file "$(date '+%Y-%m-%d')"
    cd ..
done <keywords.txt
