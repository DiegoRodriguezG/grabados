class Contact < ActionMailer::Base
  default from: "drodriguez@winnot.com"

  def client_contact params
  	@contact_params = params
  	mail(to: "jovietpoblete@gmail.com", subject: "GrabadosBaron.cl - ¡Nuevo mensaje desde el sitio!")
  end
end