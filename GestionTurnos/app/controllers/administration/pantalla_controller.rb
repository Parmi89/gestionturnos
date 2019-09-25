class Administration::PantallaController < Administration::BaseController
	layout "pantalla"
  def pantalla

  @doctor = Doctor.all
  @appointment = Appointment.for_scream
  @advertisings = Advertising.all
  end
  
end


