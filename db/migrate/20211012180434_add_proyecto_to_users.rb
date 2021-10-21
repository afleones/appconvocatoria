class AddProyectoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :proyecto, :string
  end
end
