class MalezasController < ApplicationController
  before_action :set_maleza, only: [:show, :edit, :update, :destroy]

  # GET /malezas
  # GET /malezas.json
  def index
    params.reject!{|k,v| v.empty?} if params
    nombre_comun =  ActiveRecord::Base.connection.quote('%'+params[:nombre_comun].to_s+'%')

    sql = "select 
      malezas.nombre_comun as Nombre_comun,
      malezas.nombre_cientifico as Nombre_cientifico
      from malezas
      where
      (#{nombre_comun} is NULL OR malezas.nombre_comun ilike #{nombre_comun})"

    @resultado = ActiveRecord::Base.connection.exec_query(sql)

    respond_to do |format|
      format.html {render 'informes/index'}
      format.js {render 'informes/index'}
    end
  end

  # GET /malezas/1
  # GET /malezas/1.json
  def show
  end

  # GET /malezas/new
  def new
    @maleza = Maleza.new
  end

  # GET /malezas/1/edit
  def edit
  end

  # POST /malezas
  # POST /malezas.json
  def create
    @maleza = Maleza.new(maleza_params)

    respond_to do |format|
      if @maleza.save
        format.html { redirect_to @maleza, notice: 'Maleza was successfully created.' }
        format.json { render :show, status: :created, location: @maleza }
      else
        format.html { render :new }
        format.json { render json: @maleza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malezas/1
  # PATCH/PUT /malezas/1.json
  def update
    respond_to do |format|
      if @maleza.update(maleza_params)
        format.html { redirect_to @maleza, notice: 'Maleza was successfully updated.' }
        format.json { render :show, status: :ok, location: @maleza }
      else
        format.html { render :edit }
        format.json { render json: @maleza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malezas/1
  # DELETE /malezas/1.json
  def destroy
    @maleza.destroy
    respond_to do |format|
      format.html { redirect_to malezas_url, notice: 'Maleza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maleza
      @maleza = Maleza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maleza_params
      params.require(:maleza).permit(:nombre_comun, :nombre_cientifico, :ciclo_id, :crecimiento, :espina, :latex, :tipo_de_tallo, :peciolo, :tipo_de_hoja)
    end
end
