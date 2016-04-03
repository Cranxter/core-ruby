#Problem - 6 Sorting a Hash

class Hashing
	def Key_sort
		h=Hash.new
		h={"abc"=>"hello","another_key"=>123,"4567"=>"third"}
	    a=h.keys
		h2=Hash.new
	
		a.each do|i|
			h2[i.length]=i
		end	

		h3=Hash[h2.sort]
		print "Sorted hash according to length of words is : "
		puts h3

	end
end	

obj=Hashing.new
obj.Key_sort