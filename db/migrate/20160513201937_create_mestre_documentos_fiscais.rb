class CreateMestreDocumentosFiscais < ActiveRecord::Migration
  def change
    create_table :mestre_documentos_fiscais do |t|
      t.string :cnpj_cpf, :limit => 14
      t.string :ie, :limit => 14
      t.string :razao_social, :limit => 35
      t.string :uf, :limit => 2
      t.string :classe_consumo_tp_assinante, :limit => 1
      t.string :fase_tipo_utilizacao, :limit => 1
      t.string :grupo_tensao, :limit => 2
      t.string :cod_ident_consumidor, :limit => 12
      t.string :data_emissao, :limit => 8
      t.string :modelo, :limit => 2
      t.string :serie, :limit => 3
      t.string :numero, :limit => 9
      t.string :cod_autent_dig_doc_fiscal, :limit => 32
      t.decimal :valor_total, :precision => 12, :scale => 2
      t.decimal :bc_icms, :precision => 12, :scale => 2
      t.decimal :icms, :precision => 12, :scale => 2
      t.decimal :op_isentas_nao_tributadas, :precision => 12, :scale => 2
      t.decimal :outros, :precision => 12, :scale => 2
      t.string :situacao_documento, :limit => 1
      t.string :ano_mes_ref_apuracao, :limit => 4
      t.string :ref_item_nf, :limit => 9
      t.string :num_terminal_num_conta, :limit => 10
      t.string :brancos, :limit => 3
      t.string :cod_autent_dig_registro, :limit => 32

      t.index :cnpj_cpf
      t.index :classe_consumo_tp_assinante
      t.index :fase_tipo_utilizacao
      t.index :grupo_tensao
      t.index :cod_ident_consumidor
      t.index :cod_autent_dig_doc_fiscal
      t.index :situacao_documento
      t.index :ano_mes_ref_apuracao
      t.index :ref_item_nf
      t.index :num_terminal_num_conta

      t.timestamps null: false
    end
  end
end
