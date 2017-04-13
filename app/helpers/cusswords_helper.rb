module CusswordsHelper

  def test_translation
    @cuss_a = Cussword.find_by id: 94
    @cuss_b = Cussword.find_by id: 10
    @cuss_c = Cussword.find_by id: 108
    @cuss_d = Cussword.find_by id: 179
    @cuss_e = Cussword.find_by id: 206
    @cuss_f = Cussword.find_by id: 70

    @cuss_example = [@cuss_a, @cuss_b, @cuss_c, @cuss_d, @cuss_e, @cuss_f]
    @cusses = @cuss_example.sample(2)

    @cusses
  end
  def french_translation(cuss)
    @french = Translation.find_by cussword_id: cuss.id
    if @french.nil?
      "API"
    else
      @french.french_word
    end
  end

  def hun_translation(cuss)
    @hun = Translation.find_by cussword_id: cuss.id
    if @hun.nil?
      "API"
    else
      @hun.hun_word
    end
  end

end
