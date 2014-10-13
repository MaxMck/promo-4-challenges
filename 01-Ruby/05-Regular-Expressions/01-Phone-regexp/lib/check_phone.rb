def french_phone_number?(phone_number)
  # TODO: true or false?
  tel = phone_number.tr_s(" ", "").tr_s("-", "")
  if tel =~ (/^0[^0]([0-9]{8})$/)
    true
  elsif tel =~ (/^\W33([0-9]{9})$/)
    true
  else
    false
  end
end
