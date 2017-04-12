class CusswordsController < ApplicationController

  def index
    @cussword = Cussword.new
    @cusswords = Cussword.all
    @cusses = @cusswords.sample(2)
  end

  def show
    p params[:severity]
    @cussword = Cussword.where("rating = ?", params[:severity])
    @cusses = @cussword.sample(2)
    $cussword = params [:id]
  end

end
