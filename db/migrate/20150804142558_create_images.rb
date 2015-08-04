class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :artist
      t.datetime :date
      t.string :venue
      t.string :location
      t.string :photo_url
      t.references :artist, index: true, foreign_key: true
    end
  end
end
