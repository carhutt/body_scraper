# body_scraper

This project contains what you need to scrape the body text from a bunch of websites at once.

It was built on OSX 10.10.  It uses bash and Ruby with the nokogiri library.

To use it, open a terminal in the directory and run the following command:
```
./scrape.sh urls.txt
```
This will look at all the urls in urls.txt and create a new text file for each one of them in a subdirectory called texts.  Before running the script, make sure all your urls are in urls.txt, with exactly one url per line and no blank lines.

## Notes
This script first grabs what is inside a web page's `<title>` tags and then extracts text enclosed in the HTML tags that would be under the XPath //body/p.  This works for about 90% of web pages, but some web pages don't put their articles' text inside `<p>` tags.
