class MestreDocumentosFiscaisController < ApplicationController
  before_action :set_mestre_documento_fiscal, only: [:show, :edit, :update, :destroy]

  # GET /mestre_documentos_fiscais
  # GET /mestre_documentos_fiscais.json
  def index
    @mestre_documentos_fiscais = MestreDocumentoFiscal.all
  end

  # GET /mestre_documentos_fiscais/1
  # GET /mestre_documentos_fiscais/1.json
  def show
  end

  # GET /mestre_documentos_fiscais/new
  def new
    @mestre_documento_fiscal = MestreDocumentoFiscal.new
  end

  # GET /mestre_documentos_fiscais/1/edit
  def edit
  end

  # POST /mestre_documentos_fiscais
  # POST /mestre_documentos_fiscais.json
  def create
    @mestre_documento_fiscal = MestreDocumentoFiscal.new(mestre_documento_fiscal_params)

    respond_to do |format|
      if @mestre_documento_fiscal.save
        format.html { redirect_to @mestre_documento_fiscal, notice: 'Mestre documento fiscal was successfully created.' }
        format.json { render :show, status: :created, location: @mestre_documento_fiscal }
      else
        format.html { render :new }
        format.json { render json: @mestre_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mestre_documentos_fiscais/1
  # PATCH/PUT /mestre_documentos_fiscais/1.json
  def update
    respond_to do |format|
      if @mestre_documento_fiscal.update(mestre_documento_fiscal_params)
        format.html { redirect_to @mestre_documento_fiscal, notice: 'Mestre documento fiscal was successfully updated.' }
        format.json { render :show, status: :ok, location: @mestre_documento_fiscal }
      else
        format.html { render :edit }
        format.json { render json: @mestre_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mestre_documentos_fiscais/1
  # DELETE /mestre_documentos_fiscais/1.json
  def destroy
    @mestre_documento_fiscal.destroy
    respond_to do |format|
      format.html { redirect_to mestre_documentos_fiscais_url, notice: 'Mestre documento fiscal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mestre_documento_fiscal
      @mestre_documento_fiscal = MestreDocumentoFiscal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mestre_documento_fiscal_params
      params.fetch(:mestre_documento_fiscal, {})
    end
end
