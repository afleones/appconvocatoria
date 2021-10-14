class CreateNivelPostgrados < ActiveRecord::Migration[6.1]
  def change
    create_table :nivel_postgrados do |t|
      t.string :nombre
      t.timestamps
    end
    add_reference :users, :nivel_postgrado, index: true
  end
end
