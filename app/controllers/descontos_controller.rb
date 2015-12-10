class DescontosController < ApplicationController
  before_action :set_desconto, only: [:show, :edit, :update, :destroy]

  # GET /descontos
  # GET /descontos.json
  def index
    @descontos = Desconto.all
  end

  # GET /descontos/1
  # GET /descontos/1.json
  def show
  end

  # GET /descontos/new
  def new
    @desconto = Desconto.new
  end

  # GET /descontos/1/edit
  def edit
  end

  # POST /descontos
  # POST /descontos.json
  def create
    @desconto = Desconto.new(desconto_params)

    respond_to do |format|
      if @desconto.save
        format.html { redirect_to @desconto, notice: 'Desconto was successfully created.' }
        format.json { render :show, status: :created, location: @desconto }
      else
        format.html { render :new }
        format.json { render json: @desconto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descontos/1
  # PATCH/PUT /descontos/1.json
  def update
    respond_to do |format|
      if @desconto.update(desconto_params)
        format.html { redirect_to @desconto, notice: 'Desconto was successfully updated.' }
        format.json { render :show, status: :ok, location: @desconto }
      else
        format.html { render :edit }
        format.json { render json: @desconto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descontos/1
  # DELETE /descontos/1.json
  def destroy
    @desconto.destroy
    respond_to do |format|
      format.html { redirect_to descontos_url, notice: 'Desconto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desconto
      @desconto = Desconto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desconto_params
      params.require(:desconto).permit(:porcentagem, :users_id)
    end
end
