class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nome
      t.string :email
      t.date :data_nasc
      t.string :senha
      t.references :evento, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
