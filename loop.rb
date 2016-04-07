#prob 5
class Prime_test
    
    def val_print
        for x in (100..200)
            puts x
        end
    end
    
    def prime(x)
        check=0
        for i in(2..(x/2))       #since range is from 60-120 , special case for 2 not considered
            if(x%i==0)
                
                #puts " #{x} is Not prime"
                return false
            end
        end
        return true
        #puts "#{x} is PRIME"
    end
    
    def condition_print
        for x in (60..120)
            if(prime(x)==false)
                puts " #{x} is Not prime"
                
                else
                puts "#{x} is PRIME"
            end	
            
            
        end		
        
    end	
end

obj=Prime_test.new
obj.val_print
obj.condition_print