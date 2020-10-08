require 'nokogiri'
require 'open-uri'
require 'rubygems'



def get_townhall_email(townhall_url)

	page = Nokogiri::HTML(URI.open(townhall_url))
	email = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
	return email

end



def get_townhall_urls

	page = Nokogiri::HTML(URI.open('https://www.annuaire-des-mairies.com/val-d-oise.html'))
	email = page.xpath('//a[@class ="lientxt"]/@href')

	link = []
	for i in email
		i = "https://www.annuaire-des-mairies.com" + i.text[1..-1] 
		link.push(i)

	end
	return link
end


list = []
url_list = get_townhall_urls
	for n in url_list
		get_townhall_email(n)
		list.push(n)		
	end







page = Nokogiri::HTML(URI.open('https://www.annuaire-des-mairies.com/val-d-oise.html'))
names = page.xpath('//a[@class ="lientxt"]').map{|n| n.text}

 


mairie = Hash[names.zip(list)].to_h


arr = []
mairie.each do |i,b|
arr.push(i => b)
end 

puts arr









# ville -> email 
# get_townhall_email -> emails de chaque mairie 

# nom des villes 