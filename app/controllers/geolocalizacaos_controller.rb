class GeolocalizacaosController < ApplicationController
  before_action :set_geolocalizacao, only: [:show, :edit, :update, :destroy]

  # GET /geolocalizacaos
  # GET /geolocalizacaos.json
  def index
    @geolocalizacaos = Geolocalizacao.all
  end

  # GET /geolocalizacaos/1
  # GET /geolocalizacaos/1.json
  def show
  end

  # GET /geolocalizacaos/new
  def new
    @geolocalizacao = Geolocalizacao.new
  end

  # GET /geolocalizacaos/1/edit
  def edit
  end

  # POST /geolocalizacaos
  # POST /geolocalizacaos.json
  def create
    @geolocalizacao = Geolocalizacao.new(geolocalizacao_params)

    respond_to do |format|
      if @geolocalizacao.save
        format.html { redirect_to @geolocalizacao, notice: 'Geolocalizacao was successfully created.' }
        format.json { render :show, status: :created, location: @geolocalizacao }
      else
        format.html { render :new }
        format.json { render json: @geolocalizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /geolocalizacaos/1
  # PATCH/PUT /geolocalizacaos/1.json
  def update
    respond_to do |format|
      if @geolocalizacao.update(geolocalizacao_params)
        format.html { redirect_to @geolocalizacao, notice: 'Geolocalizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @geolocalizacao }
      else
        format.html { render :edit }
        format.json { render json: @geolocalizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /geolocalizacaos/1
  # DELETE /geolocalizacaos/1.json
  def destroy
    @geolocalizacao.destroy
    respond_to do |format|
      format.html { redirect_to geolocalizacaos_url, notice: 'Geolocalizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geolocalizacao
      @geolocalizacao = Geolocalizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geolocalizacao_params
      params.require(:geolocalizacao).permit(:latitude, :longitude, :user_id)
    end
end
