# Class de serviço que lê os arquivos do convenio 115 e armazena no banco de dados
class ControleReaderService

  def read(arquivo)
    File.open(arquivo).each do |linha|
      read_template(linha)
    end
    true
  end

  def read_template(linha)
    template = ControleIdentificacaoTemplate.read(linha)
    registro = popula_registro(template)
    registro.save!
  end

  def popula_registro(template)
    ControleIdentificacao.new(
    cnpj:                                   template.cnpj,
    ie:                                     template.ie,
    razao_social:                           template.razao_social,
    endereco:                               template.endereco,
    cep:                                    template.cep,
    bairro:                                 template.bairro,
    municipio:                              template.municipio,
    uf:                                     template.uf,
    responsavel:                            template.responsavel,
    cargo_responsavel:                      template.cargo_responsavel,
    telefone:                               template.telefone,
    email:                                  template.email,
    qtd_registros_arq_mestre:               template.qtd_registros_arq_mestre,
    qtd_notas_fiscais_canceladas:           template.qtd_notas_fiscais_canceladas,
    data_emissao_primeiro_doc_fiscal:       template.data_emissao_primeiro_doc_fiscal,
    data_emissao_ultimo_doc_fiscal:         template.data_emissao_ultimo_doc_fiscal,
    numero_primeiro_doc_fiscal:             template.numero_primeiro_doc_fiscal,
    numero_ultimo_doc_fiscal:               template.numero_ultimo_doc_fiscal,
    valor_total:                            template.valor_total.to_f/100,
    bc_icms:                                template.bc_icms.to_f/100,
    icms:                                   template.icms.to_f/100,
    op_isentas_nao_tributadas:              template.op_isentas_nao_tributadas.to_f/100,
    outros:                                 template.outros.to_f/100,
    nome_arq_mestre:                        template.nome_arq_mestre,
    status_retificacao:                     template.status_retificacao,
    cod_autent_dig_arq_mestre:              template.cod_autent_dig_arq_mestre,
    qtd_registros_arq_item:                 template.qtd_registros_arq_item,
    qtd_itens_cancelados:                   template.qtd_itens_cancelados,
    data_emissao_primeiro_doc_fiscal_itens: template.data_emissao_primeiro_doc_fiscal_itens,
    data_emissao_ultimo_doc_fiscal_itens:   template.data_emissao_ultimo_doc_fiscal_itens,
    numero_primeiro_doc_fiscal_itens:       template.numero_primeiro_doc_fiscal_itens,
    numero_ultimo_doc_fiscal_itens:         template.numero_ultimo_doc_fiscal_itens,
    total_itens:                            template.total_itens.to_f/100,
    descontos_itens:                        template.descontos_itens.to_f/100,
    acrescimo_itens:                        template.acrescimo_itens.to_f/100,
    bc_icms_itens:                          template.bc_icms_itens.to_f/100,
    op_isentas_nao_tributadas_itens:        template.op_isentas_nao_tributadas_itens.to_f/100,
    icms_itens:                             template.icms_itens.to_f/100,
    outros_valores_itens:                   template.outros_valores_itens.to_f.to_f/100,
    nome_arq_item:                          template.nome_arq_item,
    status_retificacao_item:                template.status_retificacao_item,
    cod_autent_dig_arq_item:                template.cod_autent_dig_arq_item,
    qtd_registros_arq_destinatario:         template.qtd_registros_arq_destinatario,
    nome_arq_destinatario:                  template.nome_arq_destinatario,
    status_retificacao_dest:                template.status_retificacao_dest,
    cod_autent_dig_arq_dest:                template.cod_autent_dig_arq_dest,
    brancos:                                template.brancos,
    cod_autent_dig_registro:                template.cod_autent_dig_registro
    )
  end
end
