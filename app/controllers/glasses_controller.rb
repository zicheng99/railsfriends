class GlassesController < ApplicationController
  before_action :set_glass, only: [:show, :edit, :update, :destroy]

  # GET /glasses
  # GET /glasses.json
  def index
    @glasses = Glass.all
  end

  # GET /glasses/1
  # GET /glasses/1.json
  def show
  end

  # GET /glasses/new
  def new
    @glass = Glass.new
  end

  # GET /glasses/1/edit
  def edit
  end

  # POST /glasses
  # POST /glasses.json
  def create
    @glass = Glass.new(glass_params)

    respond_to do |format|
      if @glass.save
        format.html { redirect_to @glass, notice: 'Glass was successfully created.' }
        format.json { render :show, status: :created, location: @glass }
      else
        format.html { render :new }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glasses/1
  # PATCH/PUT /glasses/1.json
  def update
    respond_to do |format|
      if @glass.update(glass_params)
        format.html { redirect_to @glass, notice: 'Glass was successfully updated.' }
        format.json { render :show, status: :ok, location: @glass }
      else
        format.html { render :edit }
        format.json { render json: @glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glasses/1
  # DELETE /glasses/1.json
  def destroy
    @glass.destroy
    respond_to do |format|
      format.html { redirect_to glasses_url, notice: 'Glass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glass
      @glass = Glass.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def glass_params
      params.require(:glass).permit(:name)
    end
end
