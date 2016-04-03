# Problem -7 No of occurences in a file

h=Hash.new(0)
file_input=File.open('7_input.txt','r')
file_input.gets.downcase.scan(/\b[a-z]{1,16}\b/) { |match|  h[match]=h[match]+1}
puts h
exit