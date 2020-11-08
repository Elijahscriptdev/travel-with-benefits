class TravelInfomationsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_travel_infomation, only: %i[show edit update destroy]
  before_action :superadmin_role!, except: %i[index show]

  # GET /travel_infomations
  # GET /travel_infomations.json
  def index
    @travel_infomations = TravelInfomation.all
  end

  # GET /travel_infomations/1
  # GET /travel_infomations/1.json
  def show; end

  # GET /travel_infomations/new
  def new
    @travel_infomation = TravelInfomation.new
  end

  # GET /travel_infomations/1/edit
  def edit; end

  # POST /travel_infomations
  # POST /travel_infomations.json
  def create
    @travel_infomation = TravelInfomation.new(travel_infomation_params)
    @travel_infomation.user = current_user
    respond_to do |format|
      if @travel_infomation.save
        format.html { redirect_to @travel_infomation, notice: 'Travel infomation was successfully created.' }
        format.json { render :show, status: :created, location: @travel_infomation }
      else
        format.html { render :new }
        format.json { render json: @travel_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_infomations/1
  # PATCH/PUT /travel_infomations/1.json
  def update
    respond_to do |format|
      if @travel_infomation.update(travel_infomation_params)
        format.html { redirect_to @travel_infomation, notice: 'Travel infomation was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_infomation }
      else
        format.html { render :edit }
        format.json { render json: @travel_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_infomations/1
  # DELETE /travel_infomations/1.json
  def destroy
    @travel_infomation.destroy
    respond_to do |format|
      format.html { redirect_to travel_infomations_url, notice: 'Travel infomation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_travel_infomation
    @travel_infomation = TravelInfomation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def travel_infomation_params
    params.require(:travel_infomation).permit(:title, :travel_from, :travel_to, :travel_date, :bus_type, :departing_time, :seat_available, :price, :availability, :company_name, :takeoff_location)
  end
end
