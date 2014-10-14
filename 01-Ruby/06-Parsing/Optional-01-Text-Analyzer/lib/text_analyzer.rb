def analyze(text)
  character = text.split('').size
  line = text.split("\n").size
  paragraph = text.split(/\n{2}/).size
  sentence = text.split(/[.!?;]/).size
  word = text.gsub(/[^\w\s]/, "").split(" ").size
  avg_words_per_sentence = sentence.zero? ? 0 : (word / sentence)
  avg_sentences_per_paragraph = paragraph.zero? ? 0 : (sentence / paragraph)
  return { character_count: character, line_count: line, word_count: word,
  sentence_count: sentence, paragraph_count: paragraph,
  average_words_per_sentence: avg_words_per_sentence, average_sentences_per_paragraph: avg_sentences_per_paragraph }
end

