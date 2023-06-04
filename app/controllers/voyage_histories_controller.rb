class VoyageHistoriesController < ApplicationController
  before_action :set_voyage_history, only: %i[ show edit update destroy ]

  # GET /voyage_histories or /voyage_histories.json
  def index
    # TODO: Change to use case.
    @voyage_histories = VoyageHistory.all
  end

  # GET /voyage_histories/1 or /voyage_histories/1.json
  def show
    # TODO: Change to use case.
  end

  # GET /voyage_histories/new
  def new
    # TODO: Change to use case.
    @voyage_history = VoyageHistory.new
  end

  # GET /voyage_histories/1/edit
  def edit
    # TODO: Change to use case.
  end

  # POST /voyage_histories or /voyage_histories.json
  def create
    # TODO: Change to use case.
    @voyage_history = VoyageHistory.new(voyage_history_params)

    respond_to do |format|
      if @voyage_history.save
        # TODO: To refactor.
        format.html { redirect_to voyage_history_url(@voyage_history), notice: "Voyage history was successfully created." }
        format.json { render :show, status: :created, location: @voyage_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @voyage_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voyage_histories/1 or /voyage_histories/1.json
  def update
    # TODO: Change to use case.
    respond_to do |format|
      if @voyage_history.update(voyage_history_params)
        # TODO: To refactor.
        format.html { redirect_to voyage_history_url(@voyage_history), notice: "Voyage history was successfully updated." }
        format.json { render :show, status: :ok, location: @voyage_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @voyage_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voyage_histories/1 or /voyage_histories/1.json
  def destroy
    # TODO: Change to use case.
    @voyage_history.destroy

    respond_to do |format|
      format.html { redirect_to voyage_histories_url, notice: "Voyage history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_voyage_history
    @voyage_history = VoyageHistory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def voyage_history_params
    params.require(:voyage_history).permit(:departure_port, :departure_time, :entry_port, :entering_port_time, :naccs_code, :owner_id)
  end
end
