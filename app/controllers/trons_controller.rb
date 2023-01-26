class TronsController < ApplicationController
  before_action :authenticate, only: %i[ create update destroy ]
  before_action :set_tron, only: %i[ show update destroy ]

  # GET /trons
  def index
    @trons = Tron.all

    render json: @trons
  end

  # GET /trons/1
  def show
    render json: @tron
  end

  # POST /trons
  def create
    @tron = Tron.new(tron_params)

    if @tron.save
      render json: @tron, status: :created, location: @tron
    else
      render json: @tron.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trons/1
  def update
    if @tron.update(tron_params)
      render json: @tron
    else
      render json: @tron.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trons/1
  def destroy
    @tron.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tron
      @tron = Tron.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tron_params
      params.require(:tron).permit(:character, :game, :location, :program)
    end
end
