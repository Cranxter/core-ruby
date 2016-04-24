begin
puts "enter the name of the file"
name=gets.chomp
file_input=File.open(name,'r')
rescue
	puts "Wrong File Name entered"
	puts "RETRY"
retry
end	
h=Hash.new(0)
file_input.gets.downcase.scan(/\b[a-z]{1,16}\b/) { |match|  h[match]=h[match]+1}

puts "total number of words are :-"

puts h.keys.length()

puts "enter the word whose count you want to search"
word=gets.chomp

puts "count of the word is :-"
puts h[word]



exit
