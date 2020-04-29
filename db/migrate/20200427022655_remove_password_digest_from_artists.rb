class RemovePasswordDigestFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :password_digest
  end
end
