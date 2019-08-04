#!/usr/bin/env sh
VERSION=0.2
echo "Microsoft GIVE AWAY files downloader. Version $VERSION"
echo
echo "Star the project and follow @edu4rdshl in Github/Twitter, it will be appreciated."
echo "Downloading books links..."
if wget -q -O "links-temp.txt" "https://msdnshared.blob.core.windows.net/media/2017/07/Ligman_eBooks_2017.txt"; then
  echo "Books links correctly downloaded."
  tail -n +2 "links-temp.txt" > "links.txt"
  sed -i -r 's/\s+//g' "links.txt"
  rm -f "links-temp.txt"
  TOTAL_BOOKS=$(wc -l "links.txt" | awk '{print $1;}')
  echo "Total books to download: $TOTAL_BOOKS"
  echo "Downloading books now, do not interrupt the process..."
  COUNTER=0;
  while read -r LINK; do
    if wget -q --content-disposition "$LINK"; then
      COUNTER=$((COUNTER + 1));
      echo "Sucessfully downloaded book number: $COUNTER"
    else
      COUNTER=$((COUNTER + 1));
      echo "A error as ocurred while downloading the book: $COUNTER from link: $LINK"
    fi
  done < links.txt
  rm -f "links.txt"
  echo "Job finished."
else
  echo "Error downloading books links, exiting."
  exit
fi
