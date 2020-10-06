class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.all
  end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)

    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: 'Hardware was successfully created.' }
        format.json { render :show, status: :created, location: @hardware }
      else
        format.html { render :new }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    respond_to do |format|
      if @hardware.update(hardware_params)
        format.html { redirect_to @hardware, notice: 'Hardware was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardware }
      else
        format.html { render :edit }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url, notice: 'Hardware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hardware_params
      params.require(:hardware).permit(:device_type, :device_model, :sn, :describe, :code_number, :purchase_price, :sold, :procesor, :ram, :disk, :screen, :dvd, :video_card, :battery, :operating_system, :warranty, :equipment, :date_of_purchase, :sale_date, :price)
    end
end
