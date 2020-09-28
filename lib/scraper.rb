require 'httparty'
require 'nokogiri'

class Scraper
  attr_reader :url, :html, :data

  def initialize(url)
    @url = url
    @html = HTTParty.get(url)
    @data = Nokogiri::HTML(@html)
    @results = []
  end

  def select_elements(css_element)
    @data.css(css_element)
  end
end
