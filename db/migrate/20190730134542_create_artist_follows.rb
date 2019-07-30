class CreateArtistFavorite < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_favorite do |t|
      t.integer :artist_id
      t.integer :field_recording_id

      t.timestamps
    end
  end
end
