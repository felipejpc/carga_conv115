# baseado no convenio icms 115-03
class DestinatarioDocumentoFiscalTemplate < BinData::Record
  string :cnpj_cpf,                 read_length: 14 # 1..14
  string :ie,                       read_length: 14 # 1..14
  string :razao_social,             read_length: 35 # 1..14
  string :logradouro,               read_length: 45 # 1..14
  string :numero,                   read_length: 5 # 1..14
  string :complemento,              read_length: 15 # 1..14
  string :cep,                      read_length: 8 # 1..14
  string :bairro,                   read_length: 15 # 1..14
  string :municipio,                read_length: 30 # 1..14
  string :uf,                       read_length: 2 # 1..14
  string :telefone_contato,         read_length: 10 # 1..14
  string :cod_ident_consumidor,     read_length: 12 # 1..14
  string :num_terminal_num_conta,   read_length: 10 # 1..14
  string :uf_terminal,              read_length: 2 # 1..14
  string :brancos,                  read_length: 5 # 1..14
  string :cod_autent_dig_registro,  read_length: 32 # 1..14

  def valida(arquivo)
    valido = true
    File.open(arquivo.arquivo.path).each do |linha|
      valido = false if linha.length != 254
    end
    valido
  end
end
