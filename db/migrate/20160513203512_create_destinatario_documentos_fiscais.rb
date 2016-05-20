class CreateDestinatarioDocumentosFiscais < ActiveRecord::Migration
  def change
    create_table :destinatario_documentos_fiscais do |t|
      t.string :cnpj_cpf, :limit => 14
      t.string :ie, :limit => 14
      t.string :razao_social, :limit => 35
      t.string :logradouro, :limit => 45
      t.string :numero, :limit => 5
      t.string :complemento, :limit => 15
      t.string :cep, :limit => 8
      t.string :bairro, :limit => 15
      t.string :municipio, :limit => 30
      t.string :uf, :limit => 2
      t.string :telefone_contato, :limit => 10
      t.string :cod_ident_consumidor, :limit => 12
      t.string :num_terminal_num_conta, :limit => 10
      t.string :uf_terminal, :limit =>2
      t.string :brancos, :limit => 5
      t.string :cod_autent_dig_registro, :limit => 32

      t.index :cnpj_cpf
      t.index :municipio
      t.index :bairro
      t.index :cod_ident_consumidor

      t.timestamps null: false
    end
  end
end
