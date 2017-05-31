class CusswordsController < ApplicationController
  include CusswordsHelper

  def index
    @cussword = Cussword.new
  end

  def show
    session[:x] = params[:severity]
    @sess = session[:x]
    @cussword = Cussword.where("rating = ?", @sess)
    @cusses = @cussword.sample(2)
  end
end
