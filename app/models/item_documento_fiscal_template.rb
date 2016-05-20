# baseado no convenio icms 115-03
class ItemDocumentoFiscalTemplate < BinData::Record
  string :cnpj_cpf,                         read_length: 14 # 1..14
  string :uf,                               read_length: 2 # 1..14
  string :classe_consumo_tp_assinante,      read_length: 1 # 1..14
  string :fase_tipo_utilizacao,             read_length: 1 # 1..14
  string :grupo_tensao,                     read_length: 2 # 1..14
  string :data_emissao,                     read_length: 8 # 1..14
  string :modelo,                           read_length: 2 # 1..14
  string :serie,                            read_length: 3 # 1..14
  string :numero,                           read_length: 9 # 1..14
  string :cfop,                             read_length: 4 # 1..14
  string :item,                             read_length: 3 # 1..14
  string :cod_servico,                      read_length: 10 # 1..14
  string :descricao_servico,                read_length: 40 # 1..14
  string :cod_classificacao_item,           read_length: 4 # 1..14
  string :unidade,                          read_length: 6 # 1..14
  string :qtd_contratada,                   read_length: 11 # 1..14
  string :qtd_prestada,                     read_length: 11 # 1..14
  string :total,                            read_length: 11 # 1..14
  string :descontos,                        read_length: 11 # 1..14
  string :acrescimos,                       read_length: 11 # 1..14
  string :bc_icms,                          read_length: 11 # 1..14
  string :icms,                             read_length: 11 # 1..14
  string :op_isentas_nao_tributadas,        read_length: 11 # 1..14
  string :outros,                           read_length: 11 # 1..14
  string :aliquota_icms,                    read_length: 4 # 1..14
  string :situacao,                         read_length: 1 # 1..14
  string :ano_mes_ref_apuracao,             read_length: 4 # 1..14
  string :brancos,                          read_length: 5 # 1..14
  string :cod_autent_dig_registro,          read_length: 32 # 1..14

  def valida(arquivo)
    valido? = true
    File.open(arquivo).each do |linha|
      valido? = false if linha.length != 254
    end
    valido?
end
