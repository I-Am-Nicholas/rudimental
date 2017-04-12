class CusswordsController < ApplicationController

  def index
    @cussword = Cussword.new
    @cusswords = Cussword.all
    @cusses = @cusswords.sample(2)
    @swear = Cussword.where(rating: params[:severity])
    p @swear, params[:severity]
  end

  def show
    @data = params[:severity]
    # @cussword = Cussword.where(params[:severity])
    # @level = params[:severity]
    redirect_to cusswords_path
  end

end
