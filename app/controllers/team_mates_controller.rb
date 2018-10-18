class TeamMatesController < ApplicationController
  before_action :set_team_mate, only: [:show, :edit, :update, :destroy]

  # GET /team_mates
  # GET /team_mates.json
  def index
    @team_mates = TeamMate.all
  end

  # GET /team_mates/1
  # GET /team_mates/1.json
  def show
  end

  # GET /team_mates/new
  def new
    @team_mate = TeamMate.new
  end

  # GET /team_mates/1/edit
  def edit
  end

  # POST /team_mates
  # POST /team_mates.json
  def create
    @team_mate = TeamMate.new(team_mate_params)

    respond_to do |format|
      if @team_mate.save
        format.html { redirect_to @team_mate, notice: 'Team mate was successfully created.' }
        format.json { render :show, status: :created, location: @team_mate }
      else
        format.html { render :new }
        format.json { render json: @team_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_mates/1
  # PATCH/PUT /team_mates/1.json
  def update
    respond_to do |format|
      if @team_mate.update(team_mate_params)
        format.html { redirect_to @team_mate, notice: 'Team mate was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_mate }
      else
        format.html { render :edit }
        format.json { render json: @team_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_mates/1
  # DELETE /team_mates/1.json
  def destroy
    @team_mate.destroy
    respond_to do |format|
      format.html { redirect_to team_mates_url, notice: 'Team mate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_mate
      @team_mate = TeamMate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_mate_params
      params.require(:team_mate).permit(:name, :department, :picture, :expertise, :email, :phone_number)
    end
end
