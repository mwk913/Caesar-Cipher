
def caesar_cipher(input, cipher)
  input = input.split("")

  input.map! do |letter|
    if letter == " " || letter == "!" || letter == "." || letter == "?" 
      letter.ord + 0
      letter.chr
    elsif (letter.ord + cipher) > "z".ord
      new_letter = (letter.ord - 26) + cipher
      new_letter.chr
    elsif (letter.ord + cipher) > "Z".ord && letter.ord < "a".ord
      new_letter = (letter.ord - 26) + cipher
      new_letter.chr
    else
      new_letter = letter.ord + cipher
      new_letter.chr
    end
  end
  puts input.join("")  
end

puts "Enter a sentence and press enter to encrypt it..."
user_input = gets.chomp
caesar_cipher(user_input, 5)




