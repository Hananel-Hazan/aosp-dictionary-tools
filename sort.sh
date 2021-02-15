cat hebrew-hspell.txt | grep -v '<[א-ת]*\s' | grep -v '&[א-ת0-9]*;' | tr '[:punct:][:blank:][:digit:]' '\n' | tr '[:upper:]' '[:lower:]' | grep -v '[[:upper:]]' | uniq | sort -f | uniq -c | sort -nr | head -15000000 | tail -n +2 | awk '{print " word="$2", f="$1}' > hebrew-hspell.2.txt.combined

# unix timestamp
date +%s
