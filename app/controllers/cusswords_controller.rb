class CusswordsController < ApplicationController

  def index
    @cussword = Cussword.new
    @cusswords = Cussword.all
    @cusses = @cusswords.sample(2)
  end

  def create
    @cussword = Cussword.new
    redirect_to '/cusswords'
  end



end
