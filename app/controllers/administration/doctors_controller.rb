class Administration::DoctorsController < Administration::BaseController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]


  # GET /doctors
  # GET /doctors.json
 def index

     @filterrific = initialize_filterrific(
      Doctor,
      params[:filterrific],
      select_options: {
        sorted_by: Doctor.options_for_sorted_by, 
        doctor_specialty: Specialty.options_for_select,

      },
      #persistence_id: "shared_key",
      #default_filter_params: {},
      #CON ESTA LINEA SE FILTRARA AL PRESIONAR EL BOTON
      available_filters: [:sorted_by, :doctor_specialty, :last_name],
      sanitize_params: true,
    ) || return
    @doctors = @filterrific.find.page(params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end
  # GET /doctors/1
  # GET /doctors/1.json
  def show

  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctorss
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)
    respond_to do |format|
      if @doctor.save
        #Creo una variable y le guardo los parametros de especialidades
        doctor_specialties = params[:doctor][:specialty] 
        #por cada uno los mando
        doctor_specialties.each do |specialty_id|
        DoctorSpecialty.create( doctor_id: @doctor.id , specialty_id: specialty_id)
       end
        #PROBANDO
        doctor_consulting_rooms = params[:doctor][:consulting_room] 
        doctor_consulting_rooms.each do |consulting_room_id|
        DoctorConsultingRoom.create( doctor_id: @doctor.id , consulting_room_id: consulting_room_id)
       end

        format.html { redirect_to administration_doctors_path, notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update  
    respond_to do |format|
      if @doctor.update(doctor_params)
        #Primero borro todas las especialidades relacionadas
        @doctor.doctor_specialties.delete_all
        #Las creo nuevamente con las nuevas especialidaes
        doctor_specialties = params[:doctor][:specialty] 
        doctor_specialties.each do |specialty_id|
        DoctorSpecialty.create( doctor_id: @doctor.id , specialty_id: specialty_id)
       end
        @doctor.doctor_consulting_rooms.delete_all
        doctor_consulting_rooms = params[:doctor][:consulting_room] 
        doctor_consulting_rooms.each do |consulting_room_id|
        DoctorConsultingRoom.create( doctor_id: @doctor.id , consulting_room_id: consulting_room_id)
       end
       
        format.html { redirect_to administration_doctor_path, notice: 'Modificaciones realizadas con exito' }
        format.json { render :show, status: :ok, location: @doctor }

      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end

    end
  end 

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to administration_doctors_path, notice: 'Doctor eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.require(:doctor).permit(:last_name, :first_name   )
    end

end

 
