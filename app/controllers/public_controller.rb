class PublicController < ApplicationController
  def index
  end

  def contact
  	if !params[:contact][:email].blank? and !params[:contact][:name].blank? and !params[:contact][:message].blank?
  		if EmailValidator.valid?(params[:contact][:email])
  			Contact.client_contact(params[:contact]).deliver
  			redirect_to root_path, notice: "Gracias por contactarte con nosotros! Pronto responderemos a tu email."
  		else
  			redirect_to root_path, notice: "Debes ingresar un email válido!"
  		end
  	else
  		redirect_to root_path, notice: "Debes llenar los campos!"
  	end
  end
end
