require 'open-uri'
response = open("http://www.marmiton.org/recettes/recherche.aspx?aqt=")
puts response.inspect


require 'nokogiri'

doc = Nokogiri::HTML(File.open('marmiton.html'))

doc.search('.m_contenu_resultat').each do |element|
  puts "#{element.search('.m_titre_resultat > a').inner_text}"
  puts "Rating : #{element.search('.m_recette_note1').size} / 5}"
  puts "Cookening and preparation length :#{element.search('.m_detail_time').inner_text}"
  puts "Description summary : #{element.search('.m_texte_resultat').inner_text[0..149]}..."
  puts "Number of votes : #{element.search('.m_recette_nb_votes').inner_text}"
  puts
end