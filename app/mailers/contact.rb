class Contact < ActionMailer::Base
  default from: "drodriguezgonz@gmail.com"

  def client_contact params
  	@contact_params = params
  	mail(to: "grabadosbaron@gmail.com", subject: "GrabadosBaron.cl - ¡Nuevo mensaje desde el sitio!")
  end
end