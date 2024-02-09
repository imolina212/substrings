dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(target_word, dictionary)
    # Initialize word_count_hash
    word_count_hash = {}

    # Convert target_word to lowercase to handle case sensitivity
    target_word = target_word.downcase

    # Iterate through each word in the dictionary
    dictionary.each do |word|
        # Convert word to lowercase to handle case sensitivity
        word = word.downcase

        # Check if the current word is a substring of the target word
        if target_word.include?(word)
            # If the substring exists in word_count_hash, increment its count
            # Otherwise, initialize its count to 1
            word_count_hash[word] ||= 0
            word_count_hash[word] += 1
        end
    end

    # Return word_count_hash
    word_count_hash
end


p substrings("below", dictionary) #  => { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary) # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
