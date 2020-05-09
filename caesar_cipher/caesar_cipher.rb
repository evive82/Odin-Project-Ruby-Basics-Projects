def caesar_cipher string, shift = 0
  ciphered = string.chars.map do |letter|
    unless letter.match?(/[A-Za-z]/)
      letter
    else
      letter_case = letter.ord < 97 ? ('A'..'Z').to_a : ('a'..'z').to_a
      index = letter_case.index(letter) + shift
      index = (index % 26) if index > 25 || index < -26
      letter_case[index]
    end
  end
  ciphered.join
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Without a shift.")
puts caesar_cipher("Negative shift.", -18)
puts caesar_cipher("Big number shift!", 500)
puts caesar_cipher("CAPSLOCK IS CRUISE CONTROL FOR COOL!", -45)
