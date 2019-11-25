class Administration::ConsultingRoomsController < Administration::BaseController
  before_action :set_consulting_room, only: [:show, :edit, :update, :destroy]




  # GET /consulting_rooms
  # GET /consulting_rooms.json
  def index
    @consulting_rooms = ConsultingRoom.all
  end

  # GET /consulting_rooms/1 asdjhaghjsdgahsgd
  # GET /consulting_rooms/1.json asdjhaghjsdgahsgd
  def show
  end

  # GET /consulting_rooms/new
  def new
    @consulting_room = ConsultingRoom.new
  end

  # GET /consulting_rooms/1/edit
  def edit
  end

  # POST /consulting_rooms
  # POST /consulting_rooms.json
  def create
    @consulting_room = ConsultingRoom.new(consulting_room_params)

    respond_to do |format|
      if @consulting_room.save
        format.html { redirect_to administration_consulting_rooms_path, notice: 'Consulting room was successfully created.' }
        format.json { render :show, status: :created, location: @consulting_room }
      else
        format.html { render :new }
        format.json { render json: @consulting_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulting_rooms/1
  # PATCH/PUT /consulting_rooms/1.json
  def update
    respond_to do |format|
      if @consulting_room.update(consulting_room_params)
        format.html { redirect_to administration_consulting_room_path, notice: 'Consulting room was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulting_room }
      else
        format.html { render :edit }
        format.json { render json: @consulting_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulting_rooms/1
  # DELETE /consulting_rooms/1.json
  def destroy
    @consulting_room.destroy
    respond_to do |format|
      format.html { redirect_to administration_consulting_rooms_path, notice: 'Eliminado exitosamentes' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting_room
      @consulting_room = ConsultingRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulting_room_params
      params.require(:consulting_room).permit(:number)
    end
end
