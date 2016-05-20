class DestinatarioDocumentosFiscaisController < ApplicationController
  before_action :set_destinatario_documento_fiscal, only: [:show, :edit, :update, :destroy]

  # GET /destinatario_documentos_fiscais
  # GET /destinatario_documentos_fiscais.json
  def index
    @destinatario_documentos_fiscais = DestinatarioDocumentoFiscal.all
  end

  # GET /destinatario_documentos_fiscais/1
  # GET /destinatario_documentos_fiscais/1.json
  def show
  end

  # GET /destinatario_documentos_fiscais/new
  def new
    @destinatario_documento_fiscal = DestinatarioDocumentoFiscal.new
  end

  # GET /destinatario_documentos_fiscais/1/edit
  def edit
  end

  # POST /destinatario_documentos_fiscais
  # POST /destinatario_documentos_fiscais.json
  def create
    @destinatario_documento_fiscal = DestinatarioDocumentoFiscal.new(destinatario_documento_fiscal_params)

    respond_to do |format|
      if @destinatario_documento_fiscal.save
        format.html { redirect_to @destinatario_documento_fiscal, notice: 'Destinatario documento fiscal was successfully created.' }
        format.json { render :show, status: :created, location: @destinatario_documento_fiscal }
      else
        format.html { render :new }
        format.json { render json: @destinatario_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinatario_documentos_fiscais/1
  # PATCH/PUT /destinatario_documentos_fiscais/1.json
  def update
    respond_to do |format|
      if @destinatario_documento_fiscal.update(destinatario_documento_fiscal_params)
        format.html { redirect_to @destinatario_documento_fiscal, notice: 'Destinatario documento fiscal was successfully updated.' }
        format.json { render :show, status: :ok, location: @destinatario_documento_fiscal }
      else
        format.html { render :edit }
        format.json { render json: @destinatario_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinatario_documentos_fiscais/1
  # DELETE /destinatario_documentos_fiscais/1.json
  def destroy
    @destinatario_documento_fiscal.destroy
    respond_to do |format|
      format.html { redirect_to destinatario_documentos_fiscais_url, notice: 'Destinatario documento fiscal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destinatario_documento_fiscal
      @destinatario_documento_fiscal = DestinatarioDocumentoFiscal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destinatario_documento_fiscal_params
      params.fetch(:destinatario_documento_fiscal, {})
    end
end
