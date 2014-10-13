# Encoding: utf-8

def mail_joke(email)
  match_data = email.match(/^(\S*)@(\w+).(\S*)$/)
  fail ArgumentError.new("Enter a correct email adress") unless match_data
  prenomnom = match_data[1].split(".")
  if match_data[2] == "lewagon"
    p "Well done #{prenomnom[0]}, you're skilled and capable"
  elsif match_data[2] == "gmail"
    p "#{prenomnom[0]}, you're an average but modern person"
  elsif match_data[2] == "live"
    p "#{prenomnom[0]} #{prenomnom[1]}, aren't you born before 1973?"
  else
    return "Sorry #{match_data[1]}, we don't know how to judge '#{match_data[2]}.#{match_data[3]}'"
  end
end
