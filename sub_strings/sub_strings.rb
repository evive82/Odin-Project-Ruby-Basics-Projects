dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings string, dict
  words = dict.map { |w| string.downcase.scan(w) }
  words.flatten.reduce(Hash.new(0)) do |word, count|
    word[count] += 1
    word
  end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
