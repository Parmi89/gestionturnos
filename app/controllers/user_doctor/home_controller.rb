class  UserDoctor::HomeController < UserDoctor::BaseController
	
		layout "user_doctor"

def index
   @appointmentPendiente = Appointment.pendiente
   @appointmentAtendido = Appointment.atendido
   @appointmentLlamado = Appointment.llamado

end 

 end