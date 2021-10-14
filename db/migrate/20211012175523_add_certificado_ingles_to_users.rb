class AddCertificadoInglesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :certificado_ingles, :string
  end
end
