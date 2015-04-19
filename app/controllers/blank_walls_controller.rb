class BlankWallsController < ApplicationController
  before_action :set_blank_wall, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "fillmywall", password: "jhlive300590/*-+"

  # GET /blank_walls
  # GET /blank_walls.json
  def index
    @blank_walls = BlankWall.all
  end

  # GET /blank_walls/1
  # GET /blank_walls/1.json
  def show
  end

  # GET /blank_walls/new
  def new
    @blank_wall = BlankWall.new
  end

  # GET /blank_walls/1/edit
  def edit
  end

  # POST /blank_walls
  # POST /blank_walls.json
  def create
    @blank_wall = BlankWall.new(blank_wall_params)

    respond_to do |format|
      if @blank_wall.save
        format.html { redirect_to @blank_wall, notice: 'Blank wall was successfully created.' }
        format.json { render :show, status: :created, location: @blank_wall }
      else
        format.html { render :new }
        format.json { render json: @blank_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blank_walls/1
  # PATCH/PUT /blank_walls/1.json
  def update
    respond_to do |format|
      if @blank_wall.update(blank_wall_params)
        format.html { redirect_to @blank_wall, notice: 'Blank wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @blank_wall }
      else
        format.html { render :edit }
        format.json { render json: @blank_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blank_walls/1
  # DELETE /blank_walls/1.json
  def destroy
    @blank_wall.destroy
    respond_to do |format|
      format.html { redirect_to blank_walls_url, notice: 'Blank wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blank_wall
      @blank_wall = BlankWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blank_wall_params
      params.require(:blank_wall).permit(:owner_id, :height, :width, :min_budget, :max_budget)
    end
end
