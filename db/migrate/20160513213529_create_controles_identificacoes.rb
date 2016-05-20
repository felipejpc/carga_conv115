class CreateControlesIdentificacoes < ActiveRecord::Migration
  def change
    create_table :controles_identificacoes do |t|
      t.string :cnpj, :limit => 18
      t.string :ie, :limit => 15
      t.string :razao_social, :limit => 50
      t.string :endereco, :limit => 50
      t.string :cep, :limit => 9
      t.string :bairro, :limit => 30
      t.string :municipio, :limit => 30
      t.string :uf, :limit => 2
      t.string :responsavel, :limit => 30
      t.string :cargo_responsavel, :limit => 20
      t.string :telefone, :limit => 12
      t.string :email, :limit => 40
      t.string :qtd_registros_arq_mestre, :limit => 7
      t.string :qtd_notas_fiscais_canceladas, :limit => 7
      t.string :data_emissao_primeiro_doc_fiscal, :limit => 8
      t.string :data_emissao_ultimo_doc_fiscal, :limit => 8
      t.string :numero_primeiro_doc_fiscal, :limit => 9
      t.string :numero_ultimo_doc_fiscal, :limit => 9
      t.decimal :valor_total, :precision => 14, :scale => 2
      t.decimal :bc_icms, :precision => 14, :scale => 2
      t.decimal :icms, :precision => 14, :scale => 2
      t.decimal :op_isentas_nao_tributadas, :precision => 14, :scale => 2
      t.decimal :outros, :precision => 14, :scale => 2
      t.string :nome_arq_mestre, :limit => 13
      t.string :status_retificacao, :limit => 1
      t.string :cod_autent_dig_arq_mestre, :limit => 32
      t.string :qtd_registros_arq_item, :limit => 9
      t.string :qtd_itens_cancelados, :limit => 7
      t.string :data_emissao_primeiro_doc_fiscal_itens, :limit => 8
      t.string :data_emissao_ultimo_doc_fiscal_itens, :limit => 8
      t.string :numero_primeiro_doc_fiscal_itens, :limit => 9
      t.string :numero_ultimo_doc_fiscal_itens, :limit => 9
      t.decimal :total_itens, :precision => 14, :scale => 2
      t.decimal :descontos_itens, :precision => 14, :scale => 2
      t.decimal :acrescimo_itens, :precision => 14, :scale => 2
      t.decimal :bc_icms_itens, :precision => 14, :scale => 2
      t.decimal :icms_itens, :precision => 14, :scale => 2
      t.decimal :op_isentas_nao_tributadas_itens, :precision => 14, :scale => 2
      t.decimal :outros_valores_itens, :precision => 14, :scale => 2
      t.string :nome_arq_item, :limit => 13
      t.string :status_retificacao_item, :limit => 1
      t.string :cod_autent_dig_arq_item, :limit => 32
      t.string :qtd_registros_arq_destinatario, :limit => 7
      t.string :nome_arq_destinatario, :limit => 13
      t.string :status_retificacao_dest, :limit => 1
      t.string :cod_autent_dig_arq_dest, :limit => 32
      t.string :brancos, :limit => 17
      t.string :cod_autent_dig_registro, :limit => 32

      t.index :cnpj
      t.index :ie
      t.index :nome_arq_mestre
      t.index :nome_arq_item
      t.index :nome_arq_destinatario

      t.timestamps null: false
    end
  end
end
