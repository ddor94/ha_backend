class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :about
      t.boolean :tattoo, default: false
      t.boolean :piercing, default: false

      t.timestamps
    end
  end
end
