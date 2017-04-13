class AddCusswordIdsToTranslations < ActiveRecord::Migration
  def change
    add_reference :translations, :cussword, index: true, foreign_key: true
  end
end
