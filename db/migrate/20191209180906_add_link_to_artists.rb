class AddLinkToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :link, :string
    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
    add_column :artists, :location, :string
    add_column :artists, :avatar, :string
    add_column :artists, :bio, :string
  end
end
