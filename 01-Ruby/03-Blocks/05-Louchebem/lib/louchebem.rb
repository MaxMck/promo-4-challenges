# Encoding: utf-8
def louchebemize_word(word)
  vowel = ["a", "e", "i", "o", "u"]
  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  if word.size == 1
    word
  else
    until vowel.include? (word[0])
      word << word[0]
      word.reverse!.chop!.reverse!
    end
    word.insert(0, "l")
    word << suffix[rand(7)]
  end
word
end

def louchebemize(sentence)
 array = sentence.split(/\W+/)
 array.each { |x| louchebemize_word(x) }
 array.join(" ")
end

print louchebemize("le chat est mignon!")