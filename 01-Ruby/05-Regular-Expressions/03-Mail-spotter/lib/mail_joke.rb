# Encoding: utf-8

def mail_joke(email)
  # TODO: Return (not print!) a joke suited to the email provided
  match_data = email.match(/^(\S*)@(\w+).(\S*)$/)
  raise ArgumentError.new("Enter a correct email adress") unless match_data
  prenomnom = match_data[1].split(".")
  prenom = prenomnom[0].to_s
  nom = prenomnom[1].to_s
  if match_data[2] == "lewagon"
    p "Well done #{prenom}, you're skilled and capable"
  elsif match_data[2] == "gmail"
    p "#{prenom}, you're an average but modern person"
  elsif match_data[2] == "live"
    p "#{prenom} #{nom}, aren't you born before 1973?"
  else
    return "Sorry #{match_data[1]}, we don't know how to judge '#{match_data[2]}.#{match_data[3]}'"
  end
end

mail_joke("max.moock@kiwi.com")