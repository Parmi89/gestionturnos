class Administration::AppointmentsController < Administration::BaseController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /Turnos
  # GET /turnos.json
  def index
    @appointments = Appointment.all
  end

  # GET /turnos/1
  # GET /turnos/1.json
  def show
  end

  # GET /turnos/new
  def new
    @appointment = Appointment.new
    
  end

  # GET /turnos/1/edit
  def edit
  end

  # POST /turnos
  # POST /turnos.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to administration_appointments_path, notice: 'Turno creado correctamente.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnos/1
  #  PATCH/PUT /turnos/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to administration_appointment_path, notice: 'Turno was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /turnos/1
  # DELETE /turnos/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to administration_appointments_path, notice: 'Turno Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :state, :date, :reason)
    end
end

