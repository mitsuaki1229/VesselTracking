class VesselsController < ApplicationController
  before_action :set_vessel, only: %i[ show edit update destroy ]

  # GET /vessels or /vessels.json
  def index
    usecase = Vessels::Usecase::VesselsIndex.new
    @vessels = usecase.exec()
  end

  # GET /vessels/1 or /vessels/1.json
  def show
    # TODO: Change to use case.
  end

  # GET /vessels/new
  def new
    # TODO: Change to use case.
    @vessel = Vessel.new
  end

  # GET /vessels/1/edit
  def edit
    # TODO: Change to use case.
  end

  # POST /vessels or /vessels.json
  def create
    # TODO: Change to use case.
    @vessel = Vessel.new(vessel_params)

    respond_to do |format|
      if @vessel.save
        success_response(format, :created, "Vessel was successfully created.")
      else
        error_response(format, :new)
      end
    end
  end

  # PATCH/PUT /vessels/1 or /vessels/1.json
  def update
    # TODO: Change to use case.
    respond_to do |format|
      if @vessel.update(vessel_params)
        success_response(format, :ok, "Vessel was successfully updated.")
      else
        error_response(format, :edit)
      end
    end
  end

  # DELETE /vessels/1 or /vessels/1.json
  def destroy
    # TODO: Change to use case.
    @vessel.destroy
    respond_to do |format|
      format.html { redirect_to vessels_url, notice: "Vessel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def success_response(format, notice, status)
    format.html { redirect_to vessel_url(@vessel), notice: notice }
    format.json { render :show, status: status, location: @vessel }
  end

  def error_response(format, render)
    format.html { render render, status: :unprocessable_entity }
    format.json { render json: @vessel.errors, status: :unprocessable_entity }
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_vessel
    @vessel = Vessel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vessel_params
    params.require(:vessel).permit(:reference_number, :name, :naccs_code, :owner_id, :latest_update_user, :remarks)
  end
end
