class AddCartaRecomendacionToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :carta_recomendacion, :string
  end
end
