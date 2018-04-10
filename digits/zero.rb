module Zero
    
    def self.degLine(position,column,size)
       return " "+"_"*(size-2)+" " if position==1 || position==column 
        "|"+" "*(size-2)+"|" 
    end
end