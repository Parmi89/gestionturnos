class Administration::RoomsController < Administration::BaseController
  
  def index
	@messages =  Message.all
  end


  def show
  end

end

