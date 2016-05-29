# Class de serviço que lê os arquivos do convenio 115 e armazena no banco de dados
class ItemReaderService

  def read(arquivo)
    File.open(arquivo).each do |linha|
      read_template(linha)
    end
  end

  def read_template(linha)
    template = ItemDocumentoFiscalTemplate.read(linha)
    registro = popula_registro(template)
    registro.save!
  end

  def popula_registro(template)
    ItemDocumentoFiscal.new(
    cnpj_cpf:                         corrige_encode(template.cnpj_cpf),
    uf:                               corrige_encode(template.uf),
    classe_consumo_tp_assinante:      corrige_encode(template.classe_consumo_tp_assinante),
    fase_tipo_utilizacao:             corrige_encode(template.fase_tipo_utilizacao),
    grupo_tensao:                     corrige_encode(template.grupo_tensao),
    data_emissao:                     corrige_encode(template.data_emissao),
    modelo:                           corrige_encode(template.modelo),
    serie:                            corrige_encode(template.serie),
    numero:                           corrige_encode(template.numero),
    cfop:                             corrige_encode(template.cfop),
    item:                             corrige_encode(template.item),
    cod_servico:                      corrige_encode(template.cod_servico),
    descricao_servico:                corrige_encode(template.descricao_servico),
    cod_classificacao_item:           corrige_encode(template.cod_classificacao_item),
    unidade:                          corrige_encode(template.unidade),
    qtd_contratada:                   corrige_encode(template.qtd_contratada).to_f/1000,
    qtd_prestada:                     corrige_encode(template.qtd_prestada).to_f/1000,
    total:                            corrige_encode(template.total).to_f/100,
    descontos:                        corrige_encode(template.descontos).to_f/100,
    acrescimos:                       corrige_encode(template.acrescimos).to_f/100,
    bc_icms:                          corrige_encode(template.bc_icms).to_f/100,
    icms:                             corrige_encode(template.icms).to_f/100,
    op_isentas_nao_tributadas:        corrige_encode(template.op_isentas_nao_tributadas).to_f/100,
    outros:                           corrige_encode(template.outros).to_f/100,
    aliquota_icms:                    corrige_encode(template.aliquota_icms).to_f/100,
    situacao:                         corrige_encode(template.situacao),
    ano_mes_ref_apuracao:             corrige_encode(template.ano_mes_ref_apuracao),
    brancos:                          corrige_encode(template.brancos),
    cod_autent_dig_registro:          corrige_encode(template.cod_autent_dig_registro)
    )
  end

  def corrige_encode(dados)
  (dados.encode('UTF-8', invalid: :replace, undef: :replace)).strip
  end

end
