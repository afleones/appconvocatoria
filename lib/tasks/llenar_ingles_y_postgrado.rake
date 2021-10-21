namespace :llenar_ingles_y_postgrado do
  desc "Llenar datos iniciales de la aplicacion"
   task llenar: :environment do
       NivelIngles.create(nombre: "A1")
       NivelIngles.create(nombre: "A2")
       NivelIngles.create(nombre: "B1")
       NivelIngles.create(nombre: "B2")
       NivelIngles.create(nombre: "C1")
       NivelIngles.create(nombre: "C2")
       puts "Niveles de Ingles Registrados *.*"
       NivelPostgrado.create(nombre:"Magister")
       NivelPostgrado.create(nombre:"Doctorado")
       puts "Posgtrados Registrados *.*"
       Genero.create(nombre:"Masculino")
       Genero.create(nombre:"Femenino")
       TipoDocumento.create(nombre:"Cedula de ciudadania")
       TipoDocumento.create(nombre:"Cedula de extranjeria")
       TipoDocumento.create(nombre:"Pasaporte")
       TipoDocumento.create(nombre:"Permiso especial de Permanencia")
       puts "Tipos de Documentos Registrados *.*"
   end
end
# rails llenar_ingles_y_postgrado:llenar
