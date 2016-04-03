require 'json'

class Conversion
	def array_to_json

		a=Array.new
		h=[[:name,"eden"],[:age,25],[:club,"chelsea"]].to_h
		puts " JSON DATA : "+h.to_json
	end	

	def json_to_array

		json_data='{"name":"eden","age":"25","club":"chelsea"}'
		h=JSON.parse(json_data)
		arr=h.to_a
		print "ARRAY DATA :"
		p arr
	end
end
obj=Conversion.new
obj.array_to_json
obj.json_to_array


