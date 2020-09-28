require 'httparty'
require 'nokogiri'

class Scraper
  attr_reader :url, :html, :data

  def initialize(url)
    @url = url
    @html = HTTParty.get(url)
    @data = Nokogiri::HTML(@html)
  end
end
