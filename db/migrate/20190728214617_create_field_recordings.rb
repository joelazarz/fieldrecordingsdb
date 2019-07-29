class CreateFieldRecordings < ActiveRecord::Migration[5.2]
  def change
    create_table :field_recordings do |t|
      t.string :title
      t.integer :artist_id
      t.integer :location_id
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
