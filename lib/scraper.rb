require 'nokogiri'
require 'open-uri'
require 'pry'


doc = Nokogiri::HTML(URI.open("https://flatironschool.com/"))
headings = doc.css('.heading-financier').text.strip

courses = doc.css('.heading-20-semibold.color-black.card-title-tl')

binding.pry
courses.each do |course|
  puts course.text.strip
end

# binding.pry