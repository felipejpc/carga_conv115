class ItemDocumentosFiscaisController < ApplicationController
  before_action :set_item_documento_fiscal, only: [:show, :edit, :update, :destroy]

  # GET /item_documentos_fiscais
  # GET /item_documentos_fiscais.json
  def index
    @item_documentos_fiscais = ItemDocumentoFiscal.all
  end

  # GET /item_documentos_fiscais/1
  # GET /item_documentos_fiscais/1.json
  def show
  end

  # GET /item_documentos_fiscais/new
  def new
    @item_documento_fiscal = ItemDocumentoFiscal.new
  end

  # GET /item_documentos_fiscais/1/edit
  def edit
  end

  # POST /item_documentos_fiscais
  # POST /item_documentos_fiscais.json
  def create
    @item_documento_fiscal = ItemDocumentoFiscal.new(item_documento_fiscal_params)

    respond_to do |format|
      if @item_documento_fiscal.save
        format.html { redirect_to @item_documento_fiscal, notice: 'Item documento fiscal was successfully created.' }
        format.json { render :show, status: :created, location: @item_documento_fiscal }
      else
        format.html { render :new }
        format.json { render json: @item_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_documentos_fiscais/1
  # PATCH/PUT /item_documentos_fiscais/1.json
  def update
    respond_to do |format|
      if @item_documento_fiscal.update(item_documento_fiscal_params)
        format.html { redirect_to @item_documento_fiscal, notice: 'Item documento fiscal was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_documento_fiscal }
      else
        format.html { render :edit }
        format.json { render json: @item_documento_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_documentos_fiscais/1
  # DELETE /item_documentos_fiscais/1.json
  def destroy
    @item_documento_fiscal.destroy
    respond_to do |format|
      format.html { redirect_to item_documentos_fiscais_url, notice: 'Item documento fiscal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_documento_fiscal
      @item_documento_fiscal = ItemDocumentoFiscal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_documento_fiscal_params
      params.fetch(:item_documento_fiscal, {})
    end
end
