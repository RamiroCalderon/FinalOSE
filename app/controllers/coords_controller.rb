class CoordsController < ApplicationController
  before_action :set_coord, only: %i[ show edit update destroy ]

  # GET /coords or /coords.json
  def index
    @coords = Coord.all
  end

  # GET /coords/1 or /coords/1.json
  def show
  end

  # GET /coords/new
  def new
    @coord = Coord.new
  end

  # GET /coords/1/edit
  def edit
  end

  # POST /coords or /coords.json
  def create
    @coord = Coord.new(coord_params)

    respond_to do |format|
      if @coord.save
        format.html { redirect_to @coord, notice: "Coord was successfully created." }
        format.json { render :show, status: :created, location: @coord }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coords/1 or /coords/1.json
  def update
    respond_to do |format|
      if @coord.update(coord_params)
        format.html { redirect_to @coord, notice: "Coord was successfully updated." }
        format.json { render :show, status: :ok, location: @coord }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coords/1 or /coords/1.json
  def destroy
    @coord.destroy
    respond_to do |format|
      format.html { redirect_to coords_url, notice: "Coord was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coord
      @coord = Coord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coord_params
      params.require(:coord).permit(:name, :school_id)
    end
end
