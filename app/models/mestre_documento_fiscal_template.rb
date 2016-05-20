# baseado no convenio icms 115-03
class MestreDocumentoFiscalTemplate < BinData::Record
  string :cnpj_cpf,                     read_length: 14 # 1..14
  string :ie,                           read_length: 14 # 15..28
  string :razao_social,                 read_length: 35 # 1..14
  string :uf,                           read_length: 2 # 1..14
  string :classe_consumo_tp_assinante,  read_length: 1 # 1..14
  string :fase_tipo_utilizacao,         read_length: 1 # 1..14
  string :grupo_tensao,                 read_length: 2 # 1..14
  string :cod_ident_consumidor,         read_length: 12 # 1..14
  string :data_emissao,                 read_length: 8 # 1..14
  string :modelo,                       read_length: 2 # 1..14
  string :serie,                        read_length: 3 # 1..14
  string :numero,                       read_length: 9 # 1..14
  string :cod_autent_dig_doc_fiscal,    read_length: 32 # 1..14
  string :valor_total,                  read_length: 12 # 1..14
  string :bc_icms,                      read_length: 12 # 1..14
  string :icms,                         read_length: 12 # 1..14
  string :op_isentas_nao_tributadas,    read_length: 12 # 1..14
  string :outros,                       read_length: 12 # 1..14
  string :situacao_documento,           read_length: 1 # 1..14
  string :ano_mes_ref_apuracao,         read_length: 4 # 1..14
  string :ref_item_nf,                  read_length: 9 # 1..14
  string :num_terminal_num_conta,       read_length: 10 # 1..14
  string :brancos,                      read_length: 3 # 1..14
  string :cod_autent_dig_registro,      read_length: 32 # 1..14

  def valida(arquivo)
    valido? = true
    File.open(arquivo).each do |linha|
      valido? = false if linha.length != 254
    end
    valido?
end
