# frozen_string_literal: true

class Exception
  #
  # @param Image Scraper [Object] object of image scraper
  #
  def initialize(image_scraper)
    @image_scraper = image_scraper
  end

  #
  # handle exceptions and return errors.
  #
  # @return [Array] Array of all errors
  def error_message
    error = []
    error << 'Invalid url please enter valid web URL.' unless @image_scraper.is_valid_url?
    error
  end
end
