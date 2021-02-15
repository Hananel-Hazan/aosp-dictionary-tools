cat hebrew-hspell.txt | tail -n +2 | awk '{print " word="$1", f="$2}' > hebrew-hspell.combined

# unix timestamp
date +%s
