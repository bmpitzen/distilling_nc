class SpiritTypesController < ApplicationController
  before_action :set_spirit_type, only: [:show, :edit, :update, :destroy]

  # GET /spirit_types
  # GET /spirit_types.json
  def index
    @spirit_types = SpiritType.all
  end

  # GET /spirit_types/1
  # GET /spirit_types/1.json
  def show
  end

  # GET /spirit_types/new
  def new
    @spirit_type = SpiritType.new
  end

  # GET /spirit_types/1/edit
  def edit
  end

  # POST /spirit_types
  # POST /spirit_types.json
  def create
    @spirit_type = SpiritType.new(spirit_type_params)

    respond_to do |format|
      if @spirit_type.save
        format.html { redirect_to @spirit_type, notice: 'Spirit type was successfully created.' }
        format.json { render :show, status: :created, location: @spirit_type }
      else
        format.html { render :new }
        format.json { render json: @spirit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spirit_types/1
  # PATCH/PUT /spirit_types/1.json
  def update
    respond_to do |format|
      if @spirit_type.update(spirit_type_params)
        format.html { redirect_to @spirit_type, notice: 'Spirit type was successfully updated.' }
        format.json { render :show, status: :ok, location: @spirit_type }
      else
        format.html { render :edit }
        format.json { render json: @spirit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spirit_types/1
  # DELETE /spirit_types/1.json
  def destroy
    @spirit_type.destroy
    respond_to do |format|
      format.html { redirect_to spirit_types_url, notice: 'Spirit type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spirit_type
      @spirit_type = SpiritType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spirit_type_params
      params.require(:spirit_type).permit(:category)
    end
end
