class CusswordsController < ApplicationController

  def index
    @cussword = Cussword.new
    @cusswords = Cussword.all
  end

  def show
    @cussword = Cussword.where("rating = ?", params[:severity])
    @cusses = @cussword.sample(2)
  end

end
