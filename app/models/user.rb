class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relaciones
  belongs_to :nivel_postgrado
  belongs_to :nivel_ingles
  belongs_to :genero

  # Uploaders de Documentos solicitados en el Formulario de Registro
  mount_uploader  :historial_academico, HistorialAcademicoUploader
  mount_uploader  :certificado_ingles, CertificadoInglesUploader
  mount_uploader  :declaracion, DeclaracionUploader
  mount_uploader  :proyecto, ProyectoUploader
  mount_uploader  :ensayo, EnsayoUploader
  mount_uploader  :certificado_admision, CertificadoAdmisionUploader
  mount_uploader  :carta_recomendacion, CartaRecomendacionUploader
end
