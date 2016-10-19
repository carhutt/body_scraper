# body_scraper

This project contains everything you need to scrape the body text from a bunch of websites at once.

It was built on OSX 10.10.  It uses bash and Ruby with the nokogiri library.

To use it, open a terminal in the directory and run the following command:
```
./scrape.sh urls.txt
```
This will look at all the urls in urls.txt and create a new text file for each one of them in a subdirectory called texts.  Before running the script, make sure all your urls are in urls.txt, with exactly one url per line and no blank lines.
