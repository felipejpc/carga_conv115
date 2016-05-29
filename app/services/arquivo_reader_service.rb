# Classe de serviço que lê o tipo de arquivo a ser processado
class ArquivoReaderService

  def processa_arquivo(arquivo)
    case arquivo.tipo
    when "M"
# TODO 2- Fazer validações de arquivos
#      return unless MestreDocumentoFiscalTemplate.new.valida(arquivo)
      MestreReaderService.new.read(arquivo.arquivo.path)

    when "I"
      # TODO 2- Fazer validações de arquivos
#      return unless ItemDocumentoFiscalTemplate.new.valida(arquivo)
      ItemReaderService.new.read(arquivo.arquivo.path)

    when "D"
      # TODO 2- Fazer validações de arquivos
#      return unless DestinatarioDocumentoFiscalTemplate.new.valida(arquivo)
      DestinatarioReaderService.new.read(arquivo.arquivo.path)

    when "C"
      # TODO 2- Fazer validações de arquivos
#      return unless ControleIdentificacaoTemplate.new.valida(arquivo)
      ControleReaderService.new.read(arquivo.arquivo.path)
    else
      false
    end
# TODO corrigir erro no ex Errno::ETXTBSY
#    arquivo.save!
  end
end
