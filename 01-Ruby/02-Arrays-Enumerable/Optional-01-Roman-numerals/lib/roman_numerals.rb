def old_roman_numeral(an_integer)
  chiffre = an_integer
  m = an_integer / 1000
  chiffre -= m * 1000
  d = chiffre / 500
  chiffre -= d * 500
  c = chiffre / 100
  chiffre -= c * 100
  l = chiffre / 50
  chiffre -= l * 50
  x = chiffre / 10
  chiffre -= x * 10
  v = chiffre / 5
  chiffre -= v * 5
  i = chiffre

  message = ""
  message += "M" * m
  message += "D" * d
  message += "C" * c
  message += "L" * l
  message += "X" * x
  message += "V" * v
  message += "I" * i
end

def new_roman_numeral(an_integer)
  resultat = old_roman_numeral(an_integer)

  if resultat.include?("VIIII")
    resultat = resultat.sub("VIIII", "IX")
  elsif resultat.include?("IIII")
    resultat = resultat.sub("IIII", "IV")
  end

  if resultat.include?("XXXX")
    resultat = resultat.sub("XXXX", "XL")
  elsif resultat.include?("LXXXX")
    resultat = resultat.sub("LXXXX", "XC")
  end

  resultat = resultat.sub("LXL", "XC") if resultat.include?("LXL")

  if resultat.include?("DCCCC")
    resultat = resultat.sub("DCCCC", "CM")
  elsif resultat.include?("CCCC")
    resultat = resultat.sub("CCCC", "CD")
  end

  puts "#{resultat}"
  resultat
end
