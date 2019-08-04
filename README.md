# Microsoft giveaway books downloader
Get Microsoft give away books using bash. For more information about Microsoft Give Away books see: 

* https://blogs.msdn.microsoft.com/mssmallbiz/2017/07/11/largest-free-microsoft-ebook-giveaway-im-giving-away-millions-of-free-microsoft-ebooks-again-including-windows-10-office-365-office-2016-power-bi-azure-windows-8-1-office-2013-sharepo/

If it doesn't work, see: 

* https://web.archive.org/web/20170712035739/https://blogs.msdn.microsoft.com/mssmallbiz/2017/07/11/largest-free-microsoft-ebook-giveaway-im-giving-away-millions-of-free-microsoft-ebooks-again-including-windows-10-office-365-office-2016-power-bi-azure-windows-8-1-office-2013-sharepo/

# What is the reason?
Microsoft creates a GIVE AWAY every year and put there a lot of books that you can download FREELY, but there are only option to download they one to one and not all at once in a ZIP or similar format.

# How I can get the books?
You can just use [my script](https://github.com/Edu4rdSHL/microsoft-giveaway-books/raw/master/script.sh) to download they. Write in your terminal:

**Note:** You need `wget` installed in your system.

```
$ curl -O https://github.com/Edu4rdSHL/microsoft-giveaway-books/raw/master/script.sh && sh script.sh
```
Or
```
$ wget -O script.sh https://github.com/Edu4rdSHL/microsoft-giveaway-books/raw/master/script.sh && sh script.sh
```

Or if you don't care for error checking or other misc stuff on your terminal
```
$ wget -q --content-disposition $(curl -s https://msdnshared.blob.core.windows.net/media/2017/07/Ligman_eBooks_2017.txt | tail -n +2  | awk {'print $1'})
```


# Windows

For windows you can use any of the scripts provided in:

* https://msdnshared.blob.core.windows.net/media/2017/07/ELigman_DownloadAll_Powershell2.txt
* http://www.mssmallbiz.com/ericligman/Key_Shorts/Eligman_DownloadAll_PowerShell.txt

Give me a star and enjoy it.
