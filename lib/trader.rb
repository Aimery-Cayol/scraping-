require 'nokogiri'
require 'open-uri'
require 'rubygems'


def array(n)

page = Nokogiri::HTML(URI.open('https://coinmarketcap.com/all/views/all/'))



names = page.xpath('/html/body/div/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').map{|n| n.text}
values = page.xpath('//*[@id="__next"]/div[1]/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a').map{|i| i.text.delete('$').gsub(',','').to_f} #}.to_f)


crypto = Hash[names.zip(values)].to_h

arr = []
crypto.each do |i,b|
arr.push(i => b)
end 

#puts arr

puts arr[n]

end 

array(0)