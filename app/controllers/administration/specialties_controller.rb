 class Administration::SpecialtiesController < Administration::BaseController
  before_action :set_specialty, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  
  def index
    @specialtys = Specialty.all 
  end


  # GET /patients/1
  # GET /patients/1.json
  def show
  end
  # GET /patients/new 
  def new
    @specialty = Specialty.new
  end

  # GET /patients/1/edit
  def edit

  end

  # POST /patients
  # POST /patients.json
  def create
    @specialty = Specialty.new(specialty_params)

    respond_to do |format|
      if @specialty.save
        format.html { redirect_to administration_specialties_path, notice:'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @specialty }
      else
        format.html { render :new }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @specialty.update(specialty_params)
        format.html { redirect_to administration_specialty_path, notice: 'Datos actualizados exitosamente.' }
        format.json { render :show, status: :ok, location: @specialty }
      else
        format.html { render :edit }
        format.json { render json: @specialty.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @specialty.destroy
    respond_to do |format|
      format.html { redirect_to administration_specialties_path, notice: 'Especialidad eliminada exitosamente.' }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specialty_params
      params.require(:specialty).permit(:name )
    end



end
