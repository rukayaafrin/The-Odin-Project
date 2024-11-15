=begin
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument.
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }

> substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

=end

def sub_string(substring,dictionary)
  words_array = substring.gsub(/[[:punct:]]/,'').downcase.split(" ")
  word_hash = Hash.new(0) 
  for word in words_array
    for dict in dictionary
      if word.include?(dict)
        word_hash[dict] += 1  
      end
    end
  end
  word_hash
end

