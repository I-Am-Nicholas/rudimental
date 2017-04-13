class ChangeTranslations < ActiveRecord::Migration
  def change
    rename_column :translations, :translation_id, :hun_word
    add_column :translations, :french_word, :string
  end
end
