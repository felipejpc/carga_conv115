# Class de serviço que lê os arquivos do convenio 115 e armazena no banco de dados
class DestinatarioReaderService

  def read(arquivo)
    File.open(arquivo).each do |linha|
      read_template(linha)
    end
  end

  def read_template(linha)
    template = DestinatarioDocumentoFiscalTemplate.read(linha)
    registro = popula_registro(template)
    registro.save!
  end

  def popula_registro(template)
    DestinatarioDocumentoFiscal.new(
    cnpj_cpf:                 corrige_encode(template.cnpj_cpf),
    ie:                       corrige_encode(template.ie),
    razao_social:             corrige_encode(template.razao_social),
    logradouro:               corrige_encode(template.logradouro),
    numero:                   corrige_encode(template.numero),
    complemento:              corrige_encode(template.complemento),
    cep:                      corrige_encode(template.cep),
    bairro:                   corrige_encode(template.bairro),
    municipio:                corrige_encode(template.municipio),
    uf:                       corrige_encode(template.uf),
    telefone_contato:         corrige_encode(template.telefone_contato),
    cod_ident_consumidor:     corrige_encode(template.cod_ident_consumidor),
    num_terminal_num_conta:   corrige_encode(template.num_terminal_num_conta),
    uf_terminal:              corrige_encode(template.uf_terminal),
    brancos:                  corrige_encode(template.brancos),
    cod_autent_dig_registro:  corrige_encode(template.cod_autent_dig_registro)
    )
  end

  def corrige_encode(dados)
  (dados.encode('UTF-8', invalid: :replace, undef: :replace)).strip
  end

end
