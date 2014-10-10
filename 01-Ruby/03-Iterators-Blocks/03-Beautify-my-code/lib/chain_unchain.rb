def shuffle_word(a_word)
  a_word.upcase.chars.to_a.shuffle
end


def quote_prime_numbers(n)
  (1..n).select { |i| (2..i - 1).select { |k| i % k == 0 }.count == 0 }.map { |prime_num| "#{prime_num} is prime" }
end