def substrings(string, dictionary)
  words = string.split(/\W+/)
  words_hash = Hash.new(0)
  words.each do |split_word|
    dictionary.each do |w|
      if split_word.downcase.include? w
        words_hash[w] += 1
      end
    end
  end
  p words_hash
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)