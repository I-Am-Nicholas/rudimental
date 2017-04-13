class AddTranslationIdsToTranslations < ActiveRecord::Migration
  def change
    add_column :translations, :translation_id, :string
  end
end
