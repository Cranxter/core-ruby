# Problem -7 No of occurences in a file
puts "enter the name of the file"
name=gets.chomp
h=Hash.new(0)
file_input=File.open(name,'r')
file_input.gets.downcase.scan(/\b[a-z]{1,16}\b/) { |match|  h[match]=h[match]+1}
puts h
exit