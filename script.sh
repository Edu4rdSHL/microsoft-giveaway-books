#!/usr/bin/env sh
VERSION=0.3
echo "Microsoft GIVE AWAY files downloader. Version $VERSION"
echo "Made with love by @edu4rdshl."
echo
echo "Downloading books links..."

# GIVEAWAY_URLS=("https://msdnshared.blob.core.windows.net/media/2017/07/Ligman_eBooks_2017.txt" "http://www.mssmallbiz.com/ericligman/Key_Shorts/MSFTFreeEbooks.txt")
GIVEAWAY_URLS=("https://raw.githubusercontent.com/Edu4rdSHL/microsoft-giveaway-books/master/files/Ligman_eBooks_2017.txt" "https://raw.githubusercontent.com/Edu4rdSHL/microsoft-giveaway-books/master/files/MSFTFreeEbooks.txt")

for URL in ${GIVEAWAY_URLS[@]}; do
  if [ $(curl -sSfLo "links-temp.txt" "$URL" -w '%{http_code}\n') -eq 200 ]; then
    echo "Books links correctly downloaded from $URL..."
    tail -n +2 "links-temp.txt" > "links.txt"
    sed -i -r 's/\s+//g' "links.txt"
    rm -f "links-temp.txt"
    TOTAL_BOOKS=$(wc -l "links.txt" | awk '{print $1;}')
    echo "Total books to download: $TOTAL_BOOKS"
    echo "Downloading books now, do not interrupt the process..."
    COUNTER=0;
    while read -r LINK; do
      if curl -sSfLo "$(basename "$(curl -sSfw '%{redirect_url}' "$LINK")")" "$LINK"; then
        COUNTER=$((COUNTER + 1));
        echo "Sucessfully downloaded book: $COUNTER/$TOTAL_BOOKS"
      else
        COUNTER=$((COUNTER + 1));
        echo "A error as ocurred while downloading the book: $COUNTER from link: $LINK"
      fi
    done < links.txt
    rm -f "links.txt"
    echo "Job finished."
  else
    echo "Error downloading books links from $URL"
    if [ ${#GIVEAWAY_URLS[@]} -gt 1 ]; then
      echo "Trying next URL..."
    else
      echo "Exiting..."
      exit
    fi
  fi
done
