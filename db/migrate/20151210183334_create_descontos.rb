class CreateDescontos < ActiveRecord::Migration
  def change
    create_table :descontos do |t|
      t.float :porcentagem
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
