class Contact < ActionMailer::Base
  default from: "diego@grabadosbaron.com"

  def client_contact params
  	@contact_params = params
  	mail(to: "diego@poliglota.org", subject: "GrabadosBaron.cl - ¡Nuevo mensaje desde el sitio!")
  end

  def mailer params
  	email = params
  	mail(to: email, subject: "GrabadosBaron.cl - ¡Los mejores grabados publicitarios!")
  end
end