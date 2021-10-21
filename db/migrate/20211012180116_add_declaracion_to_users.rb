class AddDeclaracionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :declaracion, :string
  end
end
