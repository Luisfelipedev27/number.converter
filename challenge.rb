class Challenge   
    def convert_to_words(numerical)  #Parameter and method definition
        number_in_full = {           # I arranged it in hashs, so I could define my own keys
            1000000 => "million", 1000 => "thousand", 100 => "hundred", 90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty", 50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen", 18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen", 13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight", 7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two", 1 => "one"
            }
    string = ""   #variable with empty space to be filled later
    number_in_full.each do |num, name|  #searching key and value...
      if numerical == 0
        return string        #conditional + operators
      elsif numerical.to_s.length == 1 && numerical/num > 0
        return string + "#{name}"      
      elsif numerical < 100 && numerical/num > 0
        return string + "#{name}" if numerical%num == 0
        return string + "#{name} " + convert_to_words(numerical%num)
      elsif numerical/num > 0
        return string + convert_to_words(numerical/num) + " #{name} " + convert_to_words(numerical%num)
      end
    end
  end
end
  
x = Challenge.new
puts "Enter a Number"
puts "the number numericaleger in word form is,", x.convert_to_words(gets.chomp.to_i)  #input value

  
  
  