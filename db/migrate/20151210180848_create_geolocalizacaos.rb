class CreateGeolocalizacaos < ActiveRecord::Migration
  def change
    create_table :geolocalizacaos do |t|
      t.float :latitude
      t.float :longitude
      t.references :users, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
