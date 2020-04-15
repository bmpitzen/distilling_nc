# frozen_string_literal: true

class DistilleriesController < ApplicationController
  before_action :set_distillery, only: %i[show edit update destroy]

  # GET /distilleries
  # GET /distilleries.json
  def index
    @distilleries = Distillery.order(:name)
  end

  # GET /distilleries/1
  # GET /distilleries/1.json
  def show; end

  # GET /distilleries/new
  def new
    @distillery = Distillery.new
  end

  # GET /distilleries/1/edit
  def edit; end

  # POST /distilleries
  # POST /distilleries.json
  def create
    @distillery = Distillery.new(distillery_params)

    respond_to do |format|
      if @distillery.save
        format.html { redirect_to @distillery, class: "alert alert-info", role: "alert", notice: "Distillery was successfully created." }
        format.json { render :show, status: :created, location: @distillery }
      else
        format.html { render :new }
        format.json { render json: @distillery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distilleries/1
  # PATCH/PUT /distilleries/1.json
  def update
    respond_to do |format|
      if @distillery.update(distillery_params)
        format.html { redirect_to @distillery, class: "alert alert-info", role: "alert", notice: "Distillery was successfully updated." }
        format.json { render :show, status: :ok, location: @distillery }
      else
        format.html { render :edit }
        format.json { render json: @distillery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distilleries/1
  # DELETE /distilleries/1.json
  def destroy
    @distillery.destroy
    respond_to do |format|
      format.html { redirect_to distilleries_url, notice: "Distillery was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_distillery
    @distillery = Distillery.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def distillery_params
    params.require(:distillery).permit(:name, :street_address, :city, :zip, :region_id, :tours, :tour_cost, :website)
  end
end
