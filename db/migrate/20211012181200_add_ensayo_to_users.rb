class AddEnsayoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ensayo, :string
  end
end
