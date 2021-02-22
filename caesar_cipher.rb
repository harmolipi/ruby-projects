def get_text
  print "Enter the string you'd like to encrypt: "
  encrypt_string = gets.chomp

  print "Now enter the value you'd like to shift it by: "
  shift = gets.chomp.to_i

  new_string = caesar_cipher(encrypt_string, shift)

  puts "The original string was \"#{encrypt_string}\", and the new string is \"#{new_string}\"."
end

def character_shift(character, baseline, shift) 
  new_character = ((character - baseline + shift) % 26) + baseline # operate on a 1-26 range regardless of case and %26 to account for 26+ shifts
  return new_character
end

def caesar_cipher(encrypt_string="hello there", shift=0)
  new_string = String.new
  codepoints_array = encrypt_string.codepoints

  new_array = codepoints_array.map do |character| 
    if character.between?(65, 90) # uppercase letter
      character_shift(character, 65, shift)
    elsif character.between?(97, 122) # lowercase letter
      character_shift(character, 97, shift)
    else #not a letter
      character
    end
  end

  new_array.each { |letter| new_string.concat(letter) }
  new_string
end

get_text