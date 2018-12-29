class BroodsController < ApplicationController
  before_action :set_brood, only: [:show, :edit, :update, :destroy]

  # GET /broods
  # GET /broods.json
  def index
    @broods = Brood.all
  end

  # GET /broods/1
  # GET /broods/1.json
  def show
  end

  # GET /broods/new
  def new
    @brood = Brood.new
    @roster_id = params[:roster_id]
    role = params[:role]
    case role
    when "hq"
      options = %w(hiveTyrant tyranidPrime broodlord neurothrope tervigon malanthrope)
    when "elite"
      options = %w(lictors hiveGuard tyrantGuard venomthropes zoanthropes)
    when "troops"
      options = %w(termagants hormagaunts genestealers rippers)
    when "fastAttack"
      options = %w(shrikes raveners)
    when "heavySupport"
      options = %w(biovores tyrannofex carnifex exocrine)
    else
      options = ["Unknown biomass"]
    end

    @options = options
  end
  # GET /broods/1/edit
  def edit
  end

  # POST /broods
  # POST /broods.json
  def create
    choice = params["commit"]
    roster_id = params["roster"]["id"]
    case choice
    when "carnifex"
      brood_params = {
        # "brood" => {
          :roster_id => roster_id,
          :species => choice,
          :min_size => 1,
          :max_size => 3,
          :size => 1,
          :points_per_model => 82,
          :battlefield_role => "heavySupport",
          :profile => "{
            'M': '7',
            'WS': '4+',
            'BS': '3+',
            'S': '6',
            'T': '7',
            'W': '8',
            'A': '4',
            'Ld': '6',
            'Sv': '3+'
          }"
        }
      # }

      @brood = Brood.new(brood_params)
    else
      flash[:error] = "You need to pick a Carnifex"
      redirect_to root_path
    end

    respond_to do |format|
      if @brood.save
        format.html { redirect_to @brood, notice: 'Brood was successfully created.' }
        format.json { render :show, status: :created, location: @brood }
      else
        format.html { render :new }
        format.json { render json: @brood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /broods/1
  # PATCH/PUT /broods/1.json
  def update
    respond_to do |format|
      if @brood.update(brood_params)
        format.html { redirect_to @brood, notice: 'Brood was successfully updated.' }
        format.json { render :show, status: :ok, location: @brood }
      else
        format.html { render :edit }
        format.json { render json: @brood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /broods/1
  # DELETE /broods/1.json
  def destroy
    @brood.destroy
    respond_to do |format|
      format.html { redirect_to broods_url, notice: 'Brood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brood
      @brood = Brood.find(params[:id])
    end

   
end
