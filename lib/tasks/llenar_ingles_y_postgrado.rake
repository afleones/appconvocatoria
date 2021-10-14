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
       NivelPostgrado.create(nombre:"Especialista")
       NivelPostgrado.create(nombre:"Magister")
       NivelPostgrado.create(nombre:"Doctorado")
       NivelPostgrado.create(nombre:"PostDoctorado")
       puts "Posgtrados Registrados *.*"
       Genero.create(nombre:"Masculino")
       Genero.create(nombre:"Femenino")
   end
end
# rails llenar_ingles_y_postgrado:llenar
