class CampaignController < ApplicationController
	before_filter :auth

  def index

  end

  def send_email
  	emails = params[:emails].split
  	emails.each do |email|
  		Contact.mailer(email).deliver
  	end
  	redirect_to campaign_path, notice: "Mensajes enviados con exito!"
  end

  protected

  def auth
  	authenticate_or_request_with_http_basic do |username, password|
    	username == "joviet" && password == "ba_ron1234"
  	end
  end
end
