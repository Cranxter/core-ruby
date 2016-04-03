class Prime_test

	def val_print
		for x in (100..200)
			puts x
		end	
	end

	def prime(x)
		check=0
		for i in(2..(x/2))
			if(x%i==0)
				check=1
				puts " #{x} is Not prime"
				return
			end
		end		
		puts "#{x} is PRIME"
	end		
	
	def condition_print
		for x in (60..120)
			prime(x)

		end		

	end	
end

obj=Prime_test.new
obj.val_print
obj.condition_print	