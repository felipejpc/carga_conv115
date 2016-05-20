# baseado no convenio icms 115-03
class ControleIdentificacaoTemplate < BinData::Record
  string :cnpj,                                   read_length: 18 # 1..18
  string :ie,                                     read_length: 15 # 19..33
  string :razao_social,                           read_length: 50 # 34..83
  string :endereco,                               read_length: 50 # 84..133
  string :cep,                                    read_length: 9 # 134..142
  string :bairro,                                 read_length: 30 # 143..172
  string :municipio,                              read_length: 30 # 173..202
  string :uf,                                     read_length: 2 # 203..204
  string :responsavel,                            read_length: 30 # 205..234
  string :cargo_responsavel,                      read_length: 20 # 235..254
  string :telefone,                               read_length: 12 # 255..266
  string :email,                                  read_length: 40 # 1..18
  string :qtd_registros_arq_mestre,               read_length: 7 # 1..18
  string :qtd_notas_fiscais_canceladas,           read_length: 7 # 1..18
  string :data_emissao_primeiro_doc_fiscal,       read_length: 8 # 1..18
  string :data_emissao_ultimo_doc_fiscal,         read_length: 8 # 1..18
  string :numero_primeiro_doc_fiscal,             read_length: 9 # 1..18
  string :numero_ultimo_doc_fiscal,               read_length: 9 # 1..18
  string :valor_total,                           read_length: 14 # 1..18
  string :bc_icms,                               read_length: 14 # 1..18
  string :icms,                                  read_length: 14 # 1..18
  string :op_isentas_nao_tributadas,             read_length: 14 # 1..18
  string :outros,                                read_length: 14 # 1..18
  string :nome_arq_mestre,                        read_length: 13 # 1..18
  string :status_retificacao,                     read_length: 1 # 1..18
  string :cod_autent_dig_arq_mestre,              read_length: 32 # 1..18
  string :qtd_registros_arq_item,                 read_length: 9 # 1..18
  string :qtd_itens_cancelados,                   read_length: 7 # 1..18
  string :data_emissao_primeiro_doc_fiscal_itens, read_length: 8 # 1..18
  string :data_emissao_ultimo_doc_fiscal_itens,   read_length: 8 # 1..18
  string :numero_primeiro_doc_fiscal_itens,       read_length: 9 # 1..18
  string :numero_ultimo_doc_fiscal_itens,         read_length: 9 # 1..18
  string :total_itens,                           read_length: 14 # 1..18
  string :descontos_itens,                       read_length: 14 # 1..18
  string :acrescimo_itens,                       read_length: 14 # 1..18
  string :bc_icms_itens,                         read_length: 14 # 1..18
  string :op_isentas_nao_tributadas_itens,       read_length: 14 # 1..18
  string :icms_itens,                            read_length: 14 # 1..18
  string :outros_valores_itens,                  read_length: 14 # 1..18
  string :nome_arq_item,                          read_length: 13 # 1..18
  string :status_retificacao_item,                read_length: 1 # 1..18
  string :cod_autent_dig_arq_item,                read_length: 32 # 1..18
  string :qtd_registros_arq_destinatario,         read_length: 7 # 1..18
  string :nome_arq_destinatario,                  read_length: 13 # 1..18
  string :status_retificacao_dest,                read_length: 1 # 1..18
  string :cod_autent_dig_arq_dest,                read_length: 32 # 1..18
  string :brancos,                                read_length: 17 # 1..18
  string :cod_autent_dig_registro,                read_length: 32 # 1..18

  def valida(arquivo)
    valido? = true
    File.open(arquivo).each do |linha|
      valido? = false if linha.length != 766
    end
    valido?
end
