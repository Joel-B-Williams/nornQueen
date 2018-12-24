class BroodlingsController < ApplicationController
  before_action :set_broodling, only: [:show, :edit, :update, :destroy]

  # GET /broodlings
  # GET /broodlings.json
  def index
    @broodlings = Broodling.all
  end

  # GET /broodlings/1
  # GET /broodlings/1.json
  def show
  end

  # GET /broodlings/new
  def new
    @broodling = Broodling.new
  end

  # GET /broodlings/1/edit
  def edit
  end

  # POST /broodlings
  # POST /broodlings.json
  def create
    @broodling = Broodling.new(broodling_params)

    respond_to do |format|
      if @broodling.save
        format.html { redirect_to @broodling, notice: 'Broodling was successfully created.' }
        format.json { render :show, status: :created, location: @broodling }
      else
        format.html { render :new }
        format.json { render json: @broodling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /broodlings/1
  # PATCH/PUT /broodlings/1.json
  def update
    respond_to do |format|
      if @broodling.update(broodling_params)
        format.html { redirect_to @broodling, notice: 'Broodling was successfully updated.' }
        format.json { render :show, status: :ok, location: @broodling }
      else
        format.html { render :edit }
        format.json { render json: @broodling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /broodlings/1
  # DELETE /broodlings/1.json
  def destroy
    @broodling.destroy
    respond_to do |format|
      format.html { redirect_to broodlings_url, notice: 'Broodling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broodling
      @broodling = Broodling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def broodling_params
      params.require(:broodling).permit(:name, :stats, :base_points, :battlefield_role)
    end
end
