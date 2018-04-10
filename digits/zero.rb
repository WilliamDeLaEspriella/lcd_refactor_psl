module Zero
    
    def self.degLine(position,column,size)
       return " "+"_"*(size-2)+" " if position==1 || position==column 
       return " "*size if  position == (column/2)+1
        "|"+" "*(size-2)+"|" 
    end
end