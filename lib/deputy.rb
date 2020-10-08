require 'nokogiri'
require 'open-uri'
require 'rubygems'




##### Prénoms #####


#page = Nokogiri::HTML(URI.open('http://www2.assemblee-nationale.fr/deputes/liste/tableau'))

#page.xpath('/html/body/div/div[3]/div/div/section/div/article/div[3]/div/div/table/tbody/tr[4]/td[1]/a') #.map{|n| n.text.split}

#puts prenom
#prenoms =  page.xpath('/html/body/div/div[3]/div/div/section/div/article/div[3]/div/div[3]/div[1]/ul[2]/li[2]/a').map{|name| name.text}
#puts prenoms
#prenoms = page.xpath('//a[@class ="sorting_1"]/@href').text
#.map{|n| n.text.split}


#puts prenoms

an_url = Nokogiri::HTML(URI.open("http://www2.assemblee-nationale.fr/deputes/liste/tableau"))
names_url = an_url.xpath("//tr//a").map{|n| n.text.split}

print names_url


