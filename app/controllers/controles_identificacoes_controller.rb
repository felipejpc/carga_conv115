class ControlesIdentificacoesController < ApplicationController
  before_action :set_controle_identificacao, only: [:show, :edit, :update, :destroy]

  # GET /controles_identificacoes
  # GET /controles_identificacoes.json
  def index
    @controles_identificacoes = ControleIdentificacao.all
  end

  # GET /controles_identificacoes/1
  # GET /controles_identificacoes/1.json
  def show
  end

  # GET /controles_identificacoes/new
  def new
    @controle_identificacao = ControleIdentificacao.new
  end

  # GET /controles_identificacoes/1/edit
  def edit
  end

  # POST /controles_identificacoes
  # POST /controles_identificacoes.json
  def create
    @controle_identificacao = ControleIdentificacao.new(controle_identificacao_params)

    respond_to do |format|
      if @controle_identificacao.save
        format.html { redirect_to @controle_identificacao, notice: 'Controle identificacao was successfully created.' }
        format.json { render :show, status: :created, location: @controle_identificacao }
      else
        format.html { render :new }
        format.json { render json: @controle_identificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controles_identificacoes/1
  # PATCH/PUT /controles_identificacoes/1.json
  def update
    respond_to do |format|
      if @controle_identificacao.update(controle_identificacao_params)
        format.html { redirect_to @controle_identificacao, notice: 'Controle identificacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @controle_identificacao }
      else
        format.html { render :edit }
        format.json { render json: @controle_identificacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controles_identificacoes/1
  # DELETE /controles_identificacoes/1.json
  def destroy
    @controle_identificacao.destroy
    respond_to do |format|
      format.html { redirect_to controles_identificacoes_url, notice: 'Controle identificacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controle_identificacao
      @controle_identificacao = ControleIdentificacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controle_identificacao_params
      params.fetch(:controle_identificacao, {})
    end
end
