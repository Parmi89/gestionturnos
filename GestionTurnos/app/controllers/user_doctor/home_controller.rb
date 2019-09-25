class  UserDoctor::HomeController < UserDoctor::BaseController
	layout "user_doctor"

  def index
  	@appointment = Appointment.for_scream
    #@appointments = Appointment.all

  end

end




