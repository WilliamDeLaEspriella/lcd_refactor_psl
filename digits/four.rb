module Four
    
    def self.degLine(position,column,size)
       return " "*(size) if position==1  || position==column
       return "|"+" "*(size-2)+"|" if  position < (column/2)+1
       return " "+"_"*(size-2)+" " if  position == (column/2)+1
       " "*(size-1)+"|"
    end
end