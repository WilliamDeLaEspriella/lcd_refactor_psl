module Six
    
    def self.degLine(position,column,size)
       return " "+"_"*(size-2)+" " if position==1 || position==column || position== (column/2)+1
       return "|"+" "*(size-2)+"|" if position > (column/2)+1
        "|"+" "*(size-1) 
    end
end