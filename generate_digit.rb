require './digit'
class GenerateDigit
    def initialize(input)
        @digit = Digit.new
        @tuples =input.split(" ")
    end

    def generateNumber(num,position,column,size)
        case num
        when "1"
            @digit.adapter= :one
            @digit.createNumber(position,column,size)
        when "2"
           @digit.adapter= :two
           @digit.createNumber(position,column,size)
        when "3"
           @digit.adapter= :three
           @digit.createNumber(position,column,size)
        when "4"
           @digit.adapter= :four
           @digit.createNumber(position,column,size)
        when "5"
           @digit.adapter= :five
           @digit.createNumber(position,column,size)
        when "6"
           @digit.adapter= :six
           @digit.createNumber(position,column,size)
        when "7"
           @digit.adapter= :seven
           @digit.createNumber(position,column,size)
        when "8"
           @digit.adapter= :eigth
           @digit.createNumber(position,column,size)
        when "9"
           @digit.adapter= :nine
           @digit.createNumber(position,column,size)
        when "0"
           @digit.adapter= :zero
           @digit.createNumber(position,column,size)    
        end
    end

    def show
        @tuples.each do |tuple|
            return if tuple == "0,0"
            size = (tuple.split(",").first.to_i)+2
            column = (tuple.split(",").first.to_i)*2 + 3
            stringline=""
            for i in 1..column
                tuple.split(",").last.split("").each do |num|
                    stringline += generateNumber(num,i,column,size)+" "
                end   
                stringline +="\n"
            end
            puts stringline
        end
    end
end