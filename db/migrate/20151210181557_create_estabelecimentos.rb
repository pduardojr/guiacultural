class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :nome
      t.string :cnpj

      t.timestamps null: false
    end
  end
end
