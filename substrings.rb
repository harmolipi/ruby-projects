def substrings (search_string, search_array)
  results = {}
  search_array.each do |word|
    unless search_string.downcase.scan(word.downcase).empty?
      results[word] = search_string.downcase.scan(word.downcase).length
    end
  end
  results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)