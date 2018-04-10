require './adapter/digit_adapter'
require './digits/one'
require './digits/two'
require './digits/three'
require './digits/four'
require './digits/five'
require './digits/six'
require './digits/seven'
require './digits/eigth'
require './digits/nine'
require './digits/zero'

class Digit 
    include DigitAdapter

    def createNumber(position,column,size)
        self.adapter.degLine(position,column,size)
    end
    
    def adapter
        return @adapter if @adapter
        self.adapter= :one
        @adapter
    end

    def adapter= (adapter)
        @adapter= DigitAdapter.const_get(adapter.to_s.capitalize)
    end
end