class SubHotelsController < ApplicationController
  before_action :set_sub_hotel, only: [:show, :edit, :update, :destroy]

  # GET /sub_hotels
  # GET /sub_hotels.json
  def index
    @sub_hotels = SubHotel.all
  end

  # GET /sub_hotels/1
  # GET /sub_hotels/1.json
  def show
  end

  # GET /sub_hotels/new
  def new
    @sub_hotel = SubHotel.new
  end

  # GET /sub_hotels/1/edit
  def edit
  end

  # POST /sub_hotels
  # POST /sub_hotels.json
  def create
    @sub_hotel = SubHotel.new(sub_hotel_params)

    respond_to do |format|
      if @sub_hotel.save
        format.html { redirect_to @sub_hotel, notice: 'Sub hotel was successfully created.' }
        format.json { render :show, status: :created, location: @sub_hotel }
      else
        format.html { render :new }
        format.json { render json: @sub_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_hotels/1
  # PATCH/PUT /sub_hotels/1.json
  def update
    respond_to do |format|
      if @sub_hotel.update(sub_hotel_params)
        format.html { redirect_to @sub_hotel, notice: 'Sub hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_hotel }
      else
        format.html { render :edit }
        format.json { render json: @sub_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_hotels/1
  # DELETE /sub_hotels/1.json
  def destroy
    @sub_hotel.destroy
    respond_to do |format|
      format.html { redirect_to sub_hotels_url, notice: 'Sub hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_hotel
      @sub_hotel = SubHotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_hotel_params
      params.require(:sub_hotel).permit(:subhotel_id, :hotel_id, :coach_tour_id)
    end
end
