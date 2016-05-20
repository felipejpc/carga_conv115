# Class de serviço que lê os arquivos do convenio 115 e armazena no banco de dados
class ArquivoReaderService

  def processa_arquivo(arquivo)
    case arquivo.tipo
    when "M"
      return unless MestreDocumentoFiscalTemplate.new.valida(arquivo)
      MestreDocumentoFiscal.new
      mestre = read(arquivo.arquivo.path)
      mestre.each do |mestre|
        mestre.save!
      end

    when "I"
      return unless ItemDocumentoFiscalTemplate.new.valida(arquivo)
      ItemDocumentoFiscal.new
      item = read(arquivo.arquivo.path)
      item.each do |item|
        item.save!
      end

    when "D"
      return unless DestinatarioDocumentoFiscalTemplate.new.valida(arquivo)
      DestinatarioDocumento.new
      dest = read(arquivo.arquivo.path)
      dest.each do |dest|
        dest.save!
      end

    when "C"
      return unless ControleIdentificacaoTemplate.new.valida(arquivo)
      ControleIdentificacao.new
      controle = read(arquivo.arquivo.path)
      controle.each do |controle|
        controle.save!
      end

  end

  private

  def read(arquivo)
    registro = []
    File.open(arquivo).each do |linha|
      registro << template_to_veiculos(linha)
    end
    registro
  end

  def template_to_veiculos(linha)
    template = FipeTemplate.read(linha)
    veiculo = popula_veiculo(template)
    veiculo.save!
    # (1985...2016).to_a.each do |ano|
    #   next unless template.respond_to? "m#{ano}"
    # #   veiculo.fipe_valores.build(ano: ano, valor: template.send("m#{ano}"))
    # end

    (1985...Time.now.year-1).to_a.each do |ano|
      @fipe_valor = FipeValor.new(ano: ano, valor: template.send("m#{ano}"),
                                  fipe_veiculo_id: veiculo.id)
      @fipe_valor.save!
    end

    veiculo
  end
end

def corrige_encode(dados)
  (dados.encode('UTF-8', invalid: :replace, undef: :replace)).strip
end

def popula_veiculo(template)
  FipeVeiculo.new(
    codDenatran: corrige_encode(template.codDenatran),
    descricao: corrige_encode(template.descricao),
    combustivel: corrige_encode(template.combustivel),
    marca: corrige_encode(template.marca),
    modelo: corrige_encode(template.modelo),
    origem: corrige_encode(template.origem),
    tipo: corrige_encode(template.tipo))
end
