class CreateArtistsStylesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :artists, :styles
  end
end
