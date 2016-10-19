# http://ruby.bastardsbook.com/chapters/html-parsing/
require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = ARGV[0]

def text_output(url)
	doc = Nokogiri::HTML(open(url))
#	body = doc.xpath('//body/p').text
	title = doc.at('html').xpath('//title').text
#	header1 = doc.xpath('//body/h1').text
#	header2 = doc.xpath('//body/h2').text
	body_object = doc.at('body').xpath('//p') # creates a NodeSet array
#	puts body
	puts title
#	puts header1
#	puts header2
	body_object.each do |body_object|
		puts body_object.text
	end

end	

text_output(url)