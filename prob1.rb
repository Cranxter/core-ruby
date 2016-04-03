
# problem-1 Smallest and largest from 2-D array

a=Hash.new
(0..2).each do |i|
	(0..2).each do |j|
		puts "enter your input for #{i} , #{j}"
		a[[i,j]]=gets.chomp.to_i
	end	
end



(0..2).each do |i|
	(0..2).each do |j|		
		puts "#{a[[i,j]]}"
	end
end		

max=0
(0..2).each do |i|
	(0..2).each do |j|	

		if(max < a[[i,j]])
			max=a[[i,j]]
		end
	end		
end
puts "the maximum value is #{max}"
	
min=0
(0..2).each do |i|
	(0..2).each do |j|	
		if(min>a[[i,j]])
			min=a[[i,j]]
		end
	end		
end
puts "the minimum value is #{min}"
	


