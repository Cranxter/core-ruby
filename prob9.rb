require 'csv'

begin
puts "Enter the File Name"	
name=gets.chomp
csv_file=CSV.read(name,headers:true)
rescue
	puts "Invalid File name entered "
	puts "RETRY"	
retry	
end

headers=Array.new

headers=csv_file.to_a[0]


headers.each do |key|
	store=Hash.new(0)
	print "The unique values for coloumn #{key} are:-"
	csv_file.each do |row|

		store[row[key]]=store[row[key]]+1
	end
	puts store.keys.length

end	

puts

re_int=/^[+-]?[0-9]{1,10}$/ 
re_float=/^[+-]?[0-9]{1,10}[.][0-9]*$/
re_date=/^(0[1-9]|1[0-9]|2[0-9]|3[0-1])\/(0[0-9]|1[0-2])\/(19\d\d|20\d\d)$/  # valid for dd-mm-yyyy format
re_string=/^[0-9]*\s*[a-z A-Z  _@^,!#&\*\+\= \s]{1,}\s*[a-z A-Z 0-9 _@^,!.\/#& \*\+\= \s]*$/

#old_str_regex /^[0-9]*\s*[^0-9-\. \/]{1,}[\w  \s]{1,}$/



col_length=headers.length

headers.each do |head|

	m1=csv_file[0][head].scan re_int
	m2=csv_file[0][head].scan re_float
	m3=csv_file[0][head].scan re_date  # date format -> dd/mm/yyyy
	m4=csv_file[0][head].scan re_string
	if(m1[0]!=nil )
		puts "Coloumn #{head} is of Integer data type and Quantitative"
	
	elsif (m2[0]!=nil)
		puts "Coloumn #{head} is of Float data type and Quantitative"

	elsif (m3[0]!=nil)
		puts "Coulumn #{head} is of Date data type and Quantitative"

	elsif (m4[0]!=nil)
		puts "Coulumn #{head} is of String data type and Qualitative "
								
	end			


end



