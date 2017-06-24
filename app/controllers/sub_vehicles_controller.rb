class SubVehiclesController < ApplicationController
  before_action :set_sub_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /sub_vehicles
  # GET /sub_vehicles.json
  def index
    @sub_vehicles = SubVehicle.all
  end

  # GET /sub_vehicles/1
  # GET /sub_vehicles/1.json
  def show
  end

  # GET /sub_vehicles/new
  def new
    @sub_vehicle = SubVehicle.new
  end

  # GET /sub_vehicles/1/edit
  def edit
  end

  # POST /sub_vehicles
  # POST /sub_vehicles.json
  def create
    @sub_vehicle = SubVehicle.new(sub_vehicle_params)

    respond_to do |format|
      if @sub_vehicle.save
        format.html { redirect_to @sub_vehicle, notice: 'Sub vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @sub_vehicle }
      else
        format.html { render :new }
        format.json { render json: @sub_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_vehicles/1
  # PATCH/PUT /sub_vehicles/1.json
  def update
    respond_to do |format|
      if @sub_vehicle.update(sub_vehicle_params)
        format.html { redirect_to @sub_vehicle, notice: 'Sub vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @sub_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_vehicles/1
  # DELETE /sub_vehicles/1.json
  def destroy
    @sub_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to sub_vehicles_url, notice: 'Sub vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_vehicle
      @sub_vehicle = SubVehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_vehicle_params
      params.require(:sub_vehicle).permit(:subvehicle_id, :vehicle_id, :coach_tour_id)
    end
end
