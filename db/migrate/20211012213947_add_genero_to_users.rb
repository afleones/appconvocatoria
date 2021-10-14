class AddGeneroToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :genero, :string
  end
end
