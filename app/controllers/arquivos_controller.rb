# Arquivos enviados/importados
class ArquivosController < ApplicationController
  before_action :set_arquivo, only: [:destroy]

  def index
    @arquivos = Arquivo.all.order('id desc')
  end

  def new
    @arquivo = Arquivo.new
  end

  def create
    @arquivo = Arquivo.new(arquivo_params)
    @arquivo.arquivo = params[:file]
    arquivo = @arquivo.to_s
    @arquivo.nome = arquivo
    @arquivo.serie = arquivo[2..4]
    @arquivo.referencia = arquivo[5..8]
    @arquivo.status = arquivo[9]
    @arquivo.tipo = arquivo[10]
    @arquivo.volume = arquivo[12..14]
    Arquivo.transaction do
      ArquivoReaderService.new.processa_arquivo(@arquivo)
    end
    if @arquivo.save
      redirect_to arquivos_url, notice: 'O arquivo foi carregado com sucesso!'
    else
      render :new
    end
  end

  def destroy
    @arquivo.destroy
    redirect_to arquivos_url, notice: 'O arquivo foi apagado com sucesso!'
  end

  private

  def set_arquivo
    @arquivo = Arquivo.find(params[:id])
  end

  def arquivo_params
    params.require(:arquivo).permit(:nome, :serie, :referencia, :status, :tipo, :volume, :arquivo)
  end
end
