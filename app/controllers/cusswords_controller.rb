# Imports the Google Cloud client library
require "google/cloud/translate"
require 'googleauth'
require "google/apis/storage_v1"

class CusswordsController < ApplicationController
  include CusswordsHelper

  def index

  #   scopes =  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/devstorage.read_only']
  #  authorization = Google::Auth.get_application_default(scopes)
  #  storage = Google::Apis::StorageV1::StorageService.new
  #   storage.authorization = authorization
  #   # Your Google Cloud Platform project ID
  #   project_id = "rudeymental2017"
   #
  #   # Instantiates a client
  #   translate = Google::Cloud::Translate.new project: project_id
   #
  #   # The text to translate
  #   text = "Hello, world!"
  #   # The target language
  #   target = "ru"
   #
  #   # Translates some text into Russian
  #   translation = translate.translate text, to: target
   #
  #   puts "Text: #{text}"
  #   puts "Translation: #{translation}"

    test_translation
    # or use this code below for the real thing(API doesn't work yet!)

    @cussword = Cussword.new
    @cusswords = Cussword.all
  end

  def show
    @cussword = Cussword.where("rating = ?", params[:severity])
    @cusses = @cussword.sample(2)
  end

    # @cusswords = Cussword.all
    # @cusses = @cusswords.sample(2)

    @french_words = @cusses.map { |cuss| french_translation(cuss)}
    @hun_words = @cusses.map { |cuss| hun_translation(cuss)}
  end
end
