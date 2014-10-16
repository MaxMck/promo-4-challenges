require 'nokogiri'
require 'open-uri'

class Browser
  def fetch_content(url)
    doc = Nokogiri::HTML(open(url))
    doc.content
  end
end