class SpiritsController < ApplicationController
  before_action :set_spirit, only: [:show, :edit, :update, :destroy]

  # GET /spirits
  # GET /spirits.json
  def index
    @spirits = Spirit.all
  end

  # GET /spirits/1
  # GET /spirits/1.json
  def show
  end

  # GET /spirits/new
  def new
    @spirit = Spirit.new
  end

  # GET /spirits/1/edit
  def edit
  end

  # POST /spirits
  # POST /spirits.json
  def create
    @spirit = Spirit.new(spirit_params)

    respond_to do |format|
      if @spirit.save
        format.html { redirect_to @spirit, notice: 'Spirit was successfully created.' }
        format.json { render :show, status: :created, location: @spirit }
      else
        format.html { render :new }
        format.json { render json: @spirit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spirits/1
  # PATCH/PUT /spirits/1.json
  def update
    respond_to do |format|
      if @spirit.update(spirit_params)
        format.html { redirect_to @spirit, notice: 'Spirit was successfully updated.' }
        format.json { render :show, status: :ok, location: @spirit }
      else
        format.html { render :edit }
        format.json { render json: @spirit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spirits/1
  # DELETE /spirits/1.json
  def destroy
    @spirit.destroy
    respond_to do |format|
      format.html { redirect_to spirits_url, notice: 'Spirit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spirit
      @spirit = Spirit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spirit_params
      params.require(:spirit).permit(:name, :distillery_id, :spirit_type_id, :proof)
    end
end
