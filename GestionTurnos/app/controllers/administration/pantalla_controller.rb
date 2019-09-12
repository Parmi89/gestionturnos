class Administration::PantallaController < Administration::BaseController
	layout "probando"
  def pantalla
  @doctor = Doctor.all
  @appointment = Appointment.for_scream
  end
  
end


