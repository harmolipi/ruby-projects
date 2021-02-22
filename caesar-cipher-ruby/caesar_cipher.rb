def character_shift(character, baseline, shift) 
    new_character = ((character - baseline + shift) % 26) + baseline # operate on a 1-26 range regardless of case and %26 to account for 26+ shifts
    return new_character
end

def caesar_cipher(string="hello there", shift=0)
    new_string = String.new

    puts "Enter the string you'd like to encrypt: "
    encrypt_string = gets.chomp

    puts "Now enter the value you'd like to shift it by: "
    shift = gets.chomp.to_i

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
    puts "The original string was \"#{encrypt_string}\", and the new string is \"#{new_string}\"."
end

caesar_cipher