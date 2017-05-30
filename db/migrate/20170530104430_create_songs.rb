class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.string :genres
      t.string :artist

      t.timestamps
    end
  end
end
