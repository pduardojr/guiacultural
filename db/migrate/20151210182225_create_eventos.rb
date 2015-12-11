class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.date :data
      t.string :endereco
      t.float :preco
      t.float :class_etaria
      t.string :descricao
      t.float :coordenada
      t.references :estabelecimento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
