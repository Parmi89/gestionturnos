class Administration::AdvertisingsController < Administration::BaseController
  before_action :set_advertising, only: [:show, :edit, :update, :destroy]

  # GET /advertisings
  # GET /advertisings.json
  def index
    @advertisings = Advertising.all
  end

  # GET /advertisings/1
  # GET /advertisings/1.json
  def show
  end

  # GET /advertisings/new
  def new
    @advertising = Advertising.new
  end

  # GET /advertisings/1/edit
  def edit

  end

  # POST /advertisings
  # POST /advertisings.json
  def create
    
    @advertising = Advertising.new(advertising_params)

    respond_to do |format|  
      if @advertising.save
        format.html { redirect_to administration_advertisings_path, notice: 
          'Advertising was successfully created.' }
        format.json { render :show, status: :created, location: @advertising }
      else
        format.html { render :new }
        format.json { render json: @advertising.errors, 
          status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advertisings/1
  # PATCH/PUT /advertisings/1.json
  def update
    respond_to do |format|
      if @advertising.update(advertising_params)
        format.html { redirect_to administration_advertising_path, notice: 'Advertising was successfully updated.' }
        format.json { render :show, status: :ok, location: @advertising }
      else
        format.html { render :edit }
        format.json { render json: @advertising.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisings/1
  # DELETE /advertisings/1.json
  def destroy
    @advertising.destroy
    respond_to do |format|
      format.html { redirect_to administration_advertisings_path, notice: 'Advertising was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertising
      @advertising = Advertising.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertising_params
      params.require(:advertising).permit(:title, :observations, 
        :state, :higdate, :lowdate, :image)
    end
end
