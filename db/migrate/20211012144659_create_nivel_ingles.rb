class CreateNivelIngles < ActiveRecord::Migration[6.1]
  def change
    create_table :nivel_ingles do |t|
      t.string :nombre
      t.timestamps
    end
    add_reference :users, :nivel_ingles, index: true
  end
end
