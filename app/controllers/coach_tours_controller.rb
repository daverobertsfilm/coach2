class CoachToursController < ApplicationController
  before_action :set_coach_tour, only: [:show, :edit, :update, :destroy]

  # GET /coach_tours
  # GET /coach_tours.json
  def index
    @coach_tours = CoachTour.all
  end

  # GET /coach_tours/1
  # GET /coach_tours/1.json
  def show
  end

  # GET /coach_tours/new
  def new
    @coach_tour = CoachTour.new
  end

  # GET /coach_tours/1/edit
  def edit
  end

  # POST /coach_tours
  # POST /coach_tours.json
  def create
    @coach_tour = CoachTour.new(coach_tour_params)

    respond_to do |format|
      if @coach_tour.save
        format.html { redirect_to @coach_tour, notice: 'Coach tour was successfully created.' }
        format.json { render :show, status: :created, location: @coach_tour }
      else
        format.html { render :new }
        format.json { render json: @coach_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_tours/1
  # PATCH/PUT /coach_tours/1.json
  def update
    respond_to do |format|
      if @coach_tour.update(coach_tour_params)
        format.html { redirect_to @coach_tour, notice: 'Coach tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach_tour }
      else
        format.html { render :edit }
        format.json { render json: @coach_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_tours/1
  # DELETE /coach_tours/1.json
  def destroy
    @coach_tour.destroy
    respond_to do |format|
      format.html { redirect_to coach_tours_url, notice: 'Coach tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_tour
      @coach_tour = CoachTour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_tour_params
      params.require(:coach_tour).permit(:coachtour_id)
    end
end
