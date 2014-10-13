def anagrams?(a_string, another_string)
  # TODO: implement the obvious method to test if two words are anagrams
  ordre1 = a_string.downcase.gsub(/\W/, "").split("").sort
  ordre2 = another_string.downcase.gsub(/\W/, "").split("").sort
  ordre1 == ordre2
end

def anagrams_on_steroids?(a_string, another_string)
  # TODO: implement the improved method
  string1 = a_string.downcase.gsub(/\W/, "")
  string2 = another_string.downcase.gsub(/\W/, "")

  hash1 = Hash.new 0
  hash2 = Hash.new 0

  string1.chars.sort.each { |key| hash1[key] += 1  }
  string2.chars.sort.each { |key| hash2[key] += 1  }

  hash1 == hash2
end
