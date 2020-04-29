class AddTokenToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :authentication_token, :text
    add_column :artists, :authentication_token_created_at, :datetime

    add_index :artists, :authentication_token, unique: true
  end
end
