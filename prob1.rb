
# problem-1 Smallest and largest from 2-D array

puts "enter the size of the 2-D array"
limit=gets.chomp.to_i
limit=limit-1

a=Hash.new
(0..limit).each do |i|
    (0..limit).each do |j|
        puts "enter your input for #{i} , #{j}"
        a[[i,j]]=gets.chomp.to_i
    end
end



max=0
(0..limit).each do |i|
    (0..limit).each do |j|
        
        if(max < a[[i,j]])
            max=a[[i,j]]
        end
    end
end
puts "the maximum value is #{max}"

min=a[[0,0]]
(0..limit).each do |i|
    (0..limit).each do |j|
        if(min>a[[i,j]])
            min=a[[i,j]]
        end
    end		
end
puts "the minimum value is #{min}"

p a	
p a.class

