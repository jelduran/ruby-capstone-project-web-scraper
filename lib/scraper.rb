require 'open-uri'
require 'nokogiri'

class Scraper
  attr_accessor :url
  attr_reader :data, :results

  def initialize(url)
    @url = url
    @data = Nokogiri::HTML(URI.open(url).read)
    @results = []
  end

  def select_elements(css_element)
    @results = @data.css(css_element)
  end
end
