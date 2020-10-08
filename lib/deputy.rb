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


# getting rid of "M." & "Mme"
noM =[]
for i in names_url 
	i.delete("M.")
	noM.push(i)
end

noMme = []
for e in noM 
	e.delete("Mme")
	noMme.push(e)
end

#prénoms
prenom = [] #576
for n in noMme
	prenom.push(n[0].split)
	#n == n[0].split
	#prenom.push(n)
end


#noms 
nom = [] #576
for e in noMme
	nom.push(e[1..-1].join) 
end


first = []
576.times do |i|
	i = "first_name"
	first.push(i)
end

last = []
576.times do |i|
	i = "last"
	last.push(i)
end



######

combined_hash = {}

i = 0

prenom.each do |o|
combined_hash[o] = first[i]

end


#####

combined_hash2 = {}

i = 0

last.each do |o|
combined_hash[o] = last[i]

end



print combined_hash
print combined_hash2







#############


#h = Hash[fi.zip pren]
#h = fi.zip(pren).to_h

#pr = Hash[fi.zip(pren)].to_h 
	



#first_name = Hash[first.zip(prenom)].to_h

#puts first_name




#puts arrayy





 

