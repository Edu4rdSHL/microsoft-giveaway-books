# Microsoft giveaway books downloader
Get Microsoft give away books using bash. For more information about Microsoft Give Away books see: 

* https://web.archive.org/web/20170712035739/https://blogs.msdn.microsoft.com/mssmallbiz/2017/07/11/largest-free-microsoft-ebook-giveaway-im-giving-away-millions-of-free-microsoft-ebooks-again-including-windows-10-office-365-office-2016-power-bi-azure-windows-8-1-office-2013-sharepo/
* https://web.archive.org/web/20210628203253/https://docs.microsoft.com/en-us/archive/blogs/mssmallbiz/free-thats-right-im-giving-away-millions-of-free-microsoft-ebooks-again-including-windows-10-office-365-office-2016-power-bi-azure-windows-8-1-office-2013-sharepoint-2016-sha

# What is the reason?
Microsoft creates give aways occasionally and put there a lot of books that you can download FREELY, but there are not options to download them programmatically in Linux (there's a script for Windows, see below the Windows section).

# How I can get the books?
Just use [my script](https://github.com/Edu4rdSHL/microsoft-giveaway-books/raw/master/script.sh) to download them. Write in your terminal:

**Note:** You need `curl` installed in your system, it's installed by default on almost any distro.

```
$ curl -O https://github.com/Edu4rdSHL/microsoft-giveaway-books/raw/master/script.sh && bash script.sh
```


# Windows

For windows you can use any of the scripts provided in:

* https://msdnshared.blob.core.windows.net/media/2017/07/ELigman_DownloadAll_Powershell2.txt
* http://www.mssmallbiz.com/ericligman/Key_Shorts/Eligman_DownloadAll_PowerShell.txt

Enjoy it.
