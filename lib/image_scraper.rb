# frozen_string_literal: true

require 'rest-client'
require 'nokogiri'
require 'uri'

class ImageScraper
  #
  # @param web_url [String]
  #
  def initialize(web_url)
    @url = web_url
  end

  #
  # Check if input url is valid
  # or not.
  # @return [Boolean] true if url is valid url else
  # return false
  def is_valid_url?
    (@url =~ URI::DEFAULT_PARSER.make_regexp) != nil
  end

  #
  # Load/scrap the images from Web URL
  # @return [Array] returns array of images from web URL.
  def scrap_the_images
    url = RestClient.get(@url)
    parsed_result = Nokogiri::HTML(url)
    images = parsed_result.search('img').map { |img| img['src'] }
    images
  end
end
