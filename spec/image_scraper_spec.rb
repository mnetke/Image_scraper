# frozen_string_literal: true

require 'rspec'
require './lib/image_scraper'

describe ImageScraper do
  let(:url) { 'https://developers.google.com/speed/webp/gallery/' }

  describe '#is_valid_url?' do
    it 'should return true if given url is valid url' do
      expect(ImageScraper.new(url).is_valid_url?).to be_truthy
    end

    it 'should return false if given url is invalid url' do
      expect(ImageScraper.new(nil).is_valid_url?).to eq false
    end

    it 'should return false if given url is invalid url' do
      expect(ImageScraper.new('invalid_url').is_valid_url?).to eq false
    end
  end

  describe '#scrap_the_images' do
    it 'should return list of images from given Web URL' do
      expect(ImageScraper.new(url).scrap_the_images).to be_a Array
    end
  end
end
