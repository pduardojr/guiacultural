class AlterarTipoPassword < ActiveRecord::Migration
	def up
		change_column :users, :senha, :string
	end

	def down
		change_column :users, :senha, :integer
	end
end
