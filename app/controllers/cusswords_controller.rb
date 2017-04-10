class CusswordsController < ApplicationController

  def index
    @cusswords = Cussword.all
    @cusses = @cusswords.sample(2)
  end

end
