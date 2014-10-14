def analyze(text)
  character = text.split('').size
  line = text.split("\n").size
  paragraph = text.split(/\n{2}/).size
  sentence = text.split(/[.!?;]/).size
  word = text.gsub(/[^\w\s]/, "").split(" ").size
  if sentence == 0 || paragraph == 0
    return { character_count: character, line_count: line, word_count: word,
    sentence_count: sentence, paragraph_count: paragraph,
    average_words_per_sentence: 0, average_sentences_per_paragraph: 0 }
  else
    return { character_count: character, line_count: line, word_count: word,
    sentence_count: sentence, paragraph_count: paragraph,
    average_words_per_sentence: (word / sentence), average_sentences_per_paragraph: (sentence / paragraph) }
  end
end

