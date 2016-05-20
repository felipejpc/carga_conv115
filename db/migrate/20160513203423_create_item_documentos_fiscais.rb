class CreateItemDocumentosFiscais < ActiveRecord::Migration
  def change
    create_table :item_documentos_fiscais do |t|
      t.string :cnpj_cpf, :limit => 14
      t.string :uf, :limit => 2
      t.string :classe_consumo_tp_assinante, :limit => 1
      t.string :fase_tipo_utilizacao, :limit => 1
      t.string :grupo_tensao, :limit => 2
      t.string :data_emissao, :limit => 8
      t.string :modelo, :limit => 2
      t.string :serie, :limit => 3
      t.string :numero, :limit => 9
      t.string :cfop, :limit => 4
      t.string :item, :limit => 3
      t.string :cod_servico, :limit => 10
      t.string :descricao_servico, :limit => 40
      t.string :cod_classificacao_item, :limit => 4
      t.string :unidade, :limit => 6
      t.decimal :qtd_contratada, :precision => 11, :scale => 3
      t.decimal :qtd_prestada, :precision => 11, :scale => 3
      t.decimal :total, :precision => 11, :scale => 2
      t.decimal :descontos, :precision => 11, :scale => 2
      t.decimal :acrescimos, :precision => 11, :scale => 2
      t.decimal :bc_icms, :precision => 11, :scale => 2
      t.decimal :icms, :precision => 11, :scale => 2
      t.decimal :op_isentas_nao_tributadas, :precision => 11, :scale => 2
      t.decimal :outros, :precision => 11, :scale => 2
      t.decimal :aliquota_icms, :precision => 4, :scale => 2
      t.string :situacao, :limit => 1
      t.string :ano_mes_ref_apuracao, :limit => 4
      t.string :brancos, :limit => 5
      t.string :cod_autent_dig_registro, :limit => 32

      t.index :cnpj_cpf
      t.index :classe_consumo_tp_assinante
      t.index :fase_tipo_utilizacao
      t.index :grupo_tensao
      t.index :data_emissao
      t.index :numero
      t.index :cod_classificacao_item
      t.index :situacao
      t.index :ano_mes_ref_apuracao

      t.timestamps null: false
    end
  end
end
