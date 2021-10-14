class AddHistorialAcademicoToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :historial_academico, :string
  end
end
