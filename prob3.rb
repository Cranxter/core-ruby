require 'json'

class Conversion
    def array_to_json
        
        a=Array.new
        h=[[:name,"eden"],[:age,25],[:club,"chelsea"]].to_h
        puts " JSON DATA : "+h.to_json
    end
    
    def json_to_array
        final_array=Array.new
        json_data='[{"value": "494", "name": ["Sloane", "Tanner", "Daria", "Nissim"]},{"value": "306", "name": ["Ahmed, Emery, Ulric, Risa"]},{"value": "459", "name": ["Hamilton", "Malik", "Reed", "Eve"]}]'
        #json_data='{"name":"eden","age":"25","club":"chelsea"}'
        a=JSON.parse(json_data)
        final_array.push(a[0].keys)
        
        a.each do |i|
            temp_array=Array.new(0)
            h=i.values
            temp_array.push(h[0])
            h[1].each do |j|
                temp_array.push(j)
            end
            final_array.push(temp_array)
            
        end	 
        
        print "ARRAY DATA :"
        p final_array
        
    end
end
obj=Conversion.new
obj.array_to_json
obj.json_to_array


