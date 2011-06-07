#
# substitute
#
# a e i o u 
# 4 3 1 0 2
#
# password we are using 'whoami'
# our goal is:          'wh04m1'
#
def substitute(original_word)
  word_as_array = original_word.split('')
  
  new_password = ""
  word_as_array.each do |original_letter|
    case original_letter.downcase
      when 'a' : new_password << '4'
      when 'e' : new_password << '3'
      when 'i' : new_password << '1'
      when 'o' : new_password << '0'
      when 'u' : new_password << '2'
      else
        new_password << original_letter
    end
  end
  new_password
end


substitute('together')

puts "The original word is 'together'"
puts "The password is #{ substitute('together') }"

puts "The original word is 'EdgeCase'"
puts "The password is #{ substitute('EdgeCase') }"

puts "The original word is 'together'"
puts "The password is #{ substitute('Pei Wei') }"

#'t0g3th3r'

