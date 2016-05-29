# Class de serviço que lê os arquivos do convenio 115 e armazena no banco de dados
class MestreReaderService

  def read(arquivo)
    File.open(arquivo).each do |linha|
      read_template(linha)
    end
  end

  def read_template(linha)
    template = MestreDocumentoFiscalTemplate.read(linha)
    registro = popula_registro(template)
    registro.save!
  end

  def popula_registro(template)
    MestreDocumentoFiscal.new(
    cnpj_cpf:                     corrige_encode(template.cnpj_cpf),
    ie:                           corrige_encode(template.ie),
    razao_social:                 corrige_encode(template.razao_social),
    uf:                           corrige_encode(template.uf),
    classe_consumo_tp_assinante:  corrige_encode(template.classe_consumo_tp_assinante),
    fase_tipo_utilizacao:         corrige_encode(template.fase_tipo_utilizacao),
    grupo_tensao:                 corrige_encode(template.grupo_tensao),
    cod_ident_consumidor:         corrige_encode(template.cod_ident_consumidor),
    data_emissao:                 corrige_encode(template.data_emissao),
    modelo:                       corrige_encode(template.modelo),
    serie:                        corrige_encode(template.serie),
    numero:                       corrige_encode(template.numero),
    cod_autent_dig_doc_fiscal:    corrige_encode(template.cod_autent_dig_doc_fiscal),
    valor_total:                  corrige_encode(template.valor_total).to_f/100,
    bc_icms:                      corrige_encode(template.bc_icms).to_f/100,
    icms:                         corrige_encode(template.icms).to_f/100,
    op_isentas_nao_tributadas:    corrige_encode(template.op_isentas_nao_tributadas).to_f/100,
    outros:                       corrige_encode(template.outros).to_f/100,
    situacao_documento:           corrige_encode(template.situacao_documento),
    ano_mes_ref_apuracao:         corrige_encode(template.ano_mes_ref_apuracao),
    ref_item_nf:                  corrige_encode(template.ref_item_nf),
    num_terminal_num_conta:       corrige_encode(template.num_terminal_num_conta),
    brancos:                      corrige_encode(template.brancos),
    cod_autent_dig_registro:      corrige_encode(template.cod_autent_dig_registro)
    )
  end

  def corrige_encode(dados)
  (dados.encode('UTF-8', invalid: :replace, undef: :replace)).strip
  end

end
