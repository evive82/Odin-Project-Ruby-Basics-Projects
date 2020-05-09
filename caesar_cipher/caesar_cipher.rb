def caesar_cipher string, shift = 0
  alpha_cap = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  alpha_low = "abcdefghijklmnopqrstuvwxyz"
  characters = string.chars
  characters.map! do |letter|
    unless letter.match?(/[A-Za-z]/)
      letter
    else
      letter_case = alpha_cap.include?(letter) ? alpha_cap : alpha_low
      index = letter_case.index(letter) + shift
      index = index > 25 || index < -26 ? (index % 26) : index
      letter_case[index]
    end
  end
  characters.join
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("Without a shift.")
puts caesar_cipher("Negative shift.", -18)
puts caesar_cipher("Big number shift!", 500)
puts caesar_cipher("CAPSLOCK IS CRUISE CONTROL FOR COOL!", -45)