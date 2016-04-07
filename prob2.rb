require 'time'

time=Time.new
year=time.year
month=time.month
max_day=Date.new(year,month,-1).day
puts "No of days in Current months are :#{max_day}"
