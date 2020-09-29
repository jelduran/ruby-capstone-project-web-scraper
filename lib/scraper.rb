require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :url, :data, :results

  def initialize(url)
    @url = url
    @data = Nokogiri::HTML(URI.open(url).read)
    @results = []
  end

  def select_elements(css_element)
    @results = @data.css(css_element)
  end
end
