class CreateArtistCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_categories do |t|
      t.references :artist, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
