#!/bin/bash
mkdir texts
echo "Made new directory 'texts', or directory already existed"
COUNTER=0
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "URL read from file: $line"
    #touch texts/"$COUNTER".txt
    ruby scrape.rb "$line" > texts/"$COUNTER".txt
    echo "Ruby scraped $line and wrote contents into texts/$COUNTER.txt"
    let COUNTER=COUNTER+1
done < "$1"

echo -e "\nDone scraping URLS, proceeding to remove blank lines.\n"

cd texts

for file in *.txt; do
	sed -E -i.bu 's/^[[:space:]]+//; s/[[:space:]]+$//; /^$/d' $file
	echo "Removed blank lines from $file."
done

echo -e "\nCleaning up...\n"

for file in *.bu; do
	rm $file
	echo "Cleaned backup of $file."
done

echo -e "\n------------\nAll done!\n"



exit