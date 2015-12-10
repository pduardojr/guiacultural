class CreateGeolocalizacaos < ActiveRecord::Migration
  def change
    create_table :geolocalizacaos do |t|
      t.string :latitude
      t.string :longitude
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
