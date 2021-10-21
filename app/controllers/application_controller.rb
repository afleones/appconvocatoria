class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from (ActiveRecord::RecordNotFound) { |exception| handle_exception(exception, 404) }

  def catch_404
    render :file => 'public/404.html', :status => :not_found, :layout => false
  end

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:primer_nombre,
                                                                 :segundo_nombre,
                                                                 :primer_apellido,
                                                                 :segundo_apellido,
                                                                 :fecha_de_nacimiento,
                                                                 :edad,
                                                                 :email,
                                                                 :unidad_academica,
                                                                 :nivel_postgrado_id,
                                                                 :pais,
                                                                 :programa_academico,
                                                                 :nivel_ingles_id,
                                                                 :password,
                                                                 :certificado_admision,
                                                                 :certificado_ingles,
                                                                 :declaracion,
                                                                 :ensayo,
                                                                 :historial_academico,
                                                                 :proyecto,
                                                                 :password,
                                                                 :password_confirmation,
                                                                 :genero_id,
                                                                 :tipo_documento_id,
                                                                 :documento,
                                                                 :universidad)}

     devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:primer_nombre,
                                                                       :segundo_nombre,
                                                                       :primer_apellido,
                                                                       :segundo_apellido,
                                                                       :fecha_de_nacimiento,
                                                                       :edad,
                                                                       :email,
                                                                       :unidad_academica,
                                                                       :nivel_postgrado_id,
                                                                       :pais,
                                                                       :programa_academico,
                                                                       :nivel_ingles_id,
                                                                       :password,
                                                                       :certificado_admision,
                                                                       :certificado_ingles,
                                                                       :declaracion,
                                                                       :ensayo,
                                                                       :historial_academico,
                                                                       :proyecto,
                                                                       :password,
                                                                       :password_confirmation,
                                                                       :genero_id,
                                                                       :tipo_documento_id,
                                                                       :documento,
                                                                       :universidad)}
      end

   protected

   def handle_exception(ex, status)
       render_error(ex, status)
       logger.error ex
   end

   def render_error(ex, status)
       @status_code = status
       respond_to do |format|
         format.html {
           render :file => 'public/404.html', :status => :not_found, :layout => false
           # render :template => "errors/error_404.html.erb", :status => status
         }
         format.all { render :nothing => true, :status => status }
      end
   end
end
