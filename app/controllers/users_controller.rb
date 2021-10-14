class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only:
  %i[edit show change_password update_password update]


 def edit
 @user = User.find(params[:id])
 end

 def show
 @user = User.find(params[:id])
 end

 def update_password
    if @user.update_with_password(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      # flash[:success] = 'Contraseña Actualizada'
      flash[:success] = t('.success')
      redirect_to '/'
    else
      # flash[:alert] = 'Error al Actualizar'
      flash[:alert] = t('.alert')
      render 'change_password'
    end
  end

 def update
   @user = User.find(params[:id])
   if @user.update(user_params)
     flash[:success]="Registro Actualizado"
     redirect_to edit_user_path(@user)
   else
     flash[:alert]="Error al Actualizar"
     render :edit
   end
 end

 private

 def set_user
    @user = current_user
  end

  def setiar_user
    @user = User.find(current_user.id)
  end

 def user_params
   params.require(:user).permit(:primer_nombre,
                                :segundo_nombre,
                                :primer_apellido,
                                :segundo_apellido,
                                :fecha_nacimiento,
                                :edad,
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
                                :genero_id)
 end
end
