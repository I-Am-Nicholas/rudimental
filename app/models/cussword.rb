class Cussword < ActiveRecord::Base

  validates :rating, inclusion: (1..3)



end
