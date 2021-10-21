class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relaciones
  belongs_to :nivel_postgrado
  belongs_to :nivel_ingles
  belongs_to :genero
  belongs_to :tipo_documento

  validates :primer_nombre, presence: true
  validates :primer_apellido, presence: true
  validates :segundo_apellido, presence: true
  validates :tipo_documento_id, presence: true
  validates :documento, presence: true
  validates :fecha_de_nacimiento, presence: true
  validates :edad, presence: true
  validates :genero_id, presence: true
  validates :unidad_academica, presence: true
  validates :nivel_postgrado, presence: true
  validates :programa_academico, presence: true
  validates :universidad, presence: true
  validates :pais, presence: true
  validates :nivel_ingles_id, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :historial_academico, presence: true
  validates :certificado_ingles, presence: true
  validates :declaracion, presence: true
  validates :proyecto, presence: true
  validates :ensayo, presence: true
  validates :certificado_ingles, presence: true
  validates :certificado_admision, presence: true

  # Uploaders de Documentos solicitados en el Formulario de Registro
  mount_uploader  :historial_academico, HistorialAcademicoUploader
  mount_uploader  :certificado_ingles, CertificadoInglesUploader
  mount_uploader  :declaracion, DeclaracionUploader
  mount_uploader  :proyecto, ProyectoUploader
  mount_uploader  :ensayo, EnsayoUploader
  mount_uploader  :certificado_admision, CertificadoAdmisionUploader
end
