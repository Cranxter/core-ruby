#Problem 2 - No of days in a month 

class Months
	def no_of_days()
		puts "enter the month to be verified"
		month=gets.chomp
		month=month.downcase

		case month
		when "january","march","may","july","august","october","december"
			puts "The no days in #{month} are 31"
		when "april","june","september","november"
			puts "The no of days in #{month} are 30"	
		when "february"
			puts "The no of days in #{month} are 28"
		else
			puts "Enter valid input"	

		end
	end
end

obj=Months.new
obj.no_of_days
