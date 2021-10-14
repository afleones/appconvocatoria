class AddCertificadoAdmisionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :certificado_admision, :string
  end
end
