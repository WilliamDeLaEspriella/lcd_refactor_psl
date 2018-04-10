

require './generate_digit'
date = gets.chomp
generate_digit= GenerateDigit.new(date)
generate_digit.show