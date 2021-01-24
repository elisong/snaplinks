git clone git@github.com:elisong/script-blocks.git
python3 script-blocks/setup.py install
current=$(date '+%Y%m%d')
while read kw; do
    mkdir -p "$kw"
    cd "$kw"
    google "$kw" --site github.com --num 20 -o "${current}.md"
    cd ..
done < keywords.txt
