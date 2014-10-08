def old_roman_numeral(an_integer)
  # TODO: translate integer in roman number - old-style way
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
  # TODO: translate integer in roman number - modern-style way
end
