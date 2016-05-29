# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160520213613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arquivos", force: :cascade do |t|
    t.string   "nome"
    t.string   "serie",      limit: 3
    t.string   "referencia", limit: 4
    t.string   "status",     limit: 1
    t.string   "tipo",       limit: 1
    t.string   "volume",     limit: 3
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "arquivo"
  end

  create_table "controles_identificacoes", force: :cascade do |t|
    t.string   "cnpj",                                   limit: 18
    t.string   "ie",                                     limit: 15
    t.string   "razao_social",                           limit: 50
    t.string   "endereco",                               limit: 50
    t.string   "cep",                                    limit: 9
    t.string   "bairro",                                 limit: 30
    t.string   "municipio",                              limit: 30
    t.string   "uf",                                     limit: 2
    t.string   "responsavel",                            limit: 30
    t.string   "cargo_responsavel",                      limit: 20
    t.string   "telefone",                               limit: 12
    t.string   "email",                                  limit: 40
    t.string   "qtd_registros_arq_mestre",               limit: 7
    t.string   "qtd_notas_fiscais_canceladas",           limit: 7
    t.string   "data_emissao_primeiro_doc_fiscal",       limit: 8
    t.string   "data_emissao_ultimo_doc_fiscal",         limit: 8
    t.string   "numero_primeiro_doc_fiscal",             limit: 9
    t.string   "numero_ultimo_doc_fiscal",               limit: 9
    t.decimal  "valor_total",                                       precision: 14, scale: 2
    t.decimal  "bc_icms",                                           precision: 14, scale: 2
    t.decimal  "icms",                                              precision: 14, scale: 2
    t.decimal  "op_isentas_nao_tributadas",                         precision: 14, scale: 2
    t.decimal  "outros",                                            precision: 14, scale: 2
    t.string   "nome_arq_mestre",                        limit: 15
    t.string   "status_retificacao",                     limit: 1
    t.string   "cod_autent_dig_arq_mestre",              limit: 32
    t.string   "qtd_registros_arq_item",                 limit: 9
    t.string   "qtd_itens_cancelados",                   limit: 7
    t.string   "data_emissao_primeiro_doc_fiscal_itens", limit: 8
    t.string   "data_emissao_ultimo_doc_fiscal_itens",   limit: 8
    t.string   "numero_primeiro_doc_fiscal_itens",       limit: 9
    t.string   "numero_ultimo_doc_fiscal_itens",         limit: 9
    t.decimal  "total_itens",                                       precision: 14, scale: 2
    t.decimal  "descontos_itens",                                   precision: 14, scale: 2
    t.decimal  "acrescimo_itens",                                   precision: 14, scale: 2
    t.decimal  "bc_icms_itens",                                     precision: 14, scale: 2
    t.decimal  "icms_itens",                                        precision: 14, scale: 2
    t.decimal  "op_isentas_nao_tributadas_itens",                   precision: 14, scale: 2
    t.decimal  "outros_valores_itens",                              precision: 14, scale: 2
    t.string   "nome_arq_item",                          limit: 15
    t.string   "status_retificacao_item",                limit: 1
    t.string   "cod_autent_dig_arq_item",                limit: 32
    t.string   "qtd_registros_arq_destinatario",         limit: 7
    t.string   "nome_arq_destinatario",                  limit: 15
    t.string   "status_retificacao_dest",                limit: 1
    t.string   "cod_autent_dig_arq_dest",                limit: 32
    t.string   "brancos",                                limit: 42
    t.string   "cod_autent_dig_registro",                limit: 32
    t.datetime "created_at",                                                                 null: false
    t.datetime "updated_at",                                                                 null: false
  end

  add_index "controles_identificacoes", ["cnpj"], name: "index_controles_identificacoes_on_cnpj", using: :btree
  add_index "controles_identificacoes", ["ie"], name: "index_controles_identificacoes_on_ie", using: :btree
  add_index "controles_identificacoes", ["nome_arq_destinatario"], name: "index_controles_identificacoes_on_nome_arq_destinatario", using: :btree
  add_index "controles_identificacoes", ["nome_arq_item"], name: "index_controles_identificacoes_on_nome_arq_item", using: :btree
  add_index "controles_identificacoes", ["nome_arq_mestre"], name: "index_controles_identificacoes_on_nome_arq_mestre", using: :btree

  create_table "dados_cadastrais_dest", force: :cascade do |t|
    t.string "cnpj_cpf",             limit: 14
    t.string "ie",                   limit: 14
    t.string "razao_social",         limit: 35
    t.string "logradouro",           limit: 45
    t.string "numero",               limit: 5
    t.string "complemento",          limit: 15
    t.string "cep",                  limit: 8
    t.string "bairro",               limit: 15
    t.string "municipio",            limit: 30
    t.string "uf",                   limit: 2
    t.string "tel_contato",          limit: 10
    t.string "cod_ident_consumidor", limit: 12
    t.string "num_terminal",         limit: 10
    t.string "uf_terminal",          limit: 2
  end

  create_table "destinatario_documentos_fiscais", force: :cascade do |t|
    t.string   "cnpj_cpf",                limit: 14
    t.string   "ie",                      limit: 14
    t.string   "razao_social",            limit: 35
    t.string   "logradouro",              limit: 45
    t.string   "numero",                  limit: 5
    t.string   "complemento",             limit: 15
    t.string   "cep",                     limit: 8
    t.string   "bairro",                  limit: 15
    t.string   "municipio",               limit: 30
    t.string   "uf",                      limit: 2
    t.string   "telefone_contato",        limit: 10
    t.string   "cod_ident_consumidor",    limit: 12
    t.string   "num_terminal_num_conta",  limit: 10
    t.string   "uf_terminal",             limit: 2
    t.string   "brancos",                 limit: 5
    t.string   "cod_autent_dig_registro", limit: 32
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "destinatario_documentos_fiscais", ["bairro"], name: "index_destinatario_documentos_fiscais_on_bairro", using: :btree
  add_index "destinatario_documentos_fiscais", ["cnpj_cpf"], name: "index_destinatario_documentos_fiscais_on_cnpj_cpf", using: :btree
  add_index "destinatario_documentos_fiscais", ["cod_ident_consumidor"], name: "index_destinatario_documentos_fiscais_on_cod_ident_consumidor", using: :btree
  add_index "destinatario_documentos_fiscais", ["municipio"], name: "index_destinatario_documentos_fiscais_on_municipio", using: :btree

  create_table "item_documentos_fiscais", force: :cascade do |t|
    t.string   "cnpj_cpf",                    limit: 14
    t.string   "uf",                          limit: 2
    t.string   "classe_consumo_tp_assinante", limit: 1
    t.string   "fase_tipo_utilizacao",        limit: 1
    t.string   "grupo_tensao",                limit: 2
    t.string   "data_emissao",                limit: 8
    t.string   "modelo",                      limit: 2
    t.string   "serie",                       limit: 3
    t.string   "numero",                      limit: 9
    t.string   "cfop",                        limit: 4
    t.string   "item",                        limit: 3
    t.string   "cod_servico",                 limit: 10
    t.string   "descricao_servico",           limit: 40
    t.string   "cod_classificacao_item",      limit: 4
    t.string   "unidade",                     limit: 6
    t.decimal  "qtd_contratada",                         precision: 11, scale: 3
    t.decimal  "qtd_prestada",                           precision: 11, scale: 3
    t.decimal  "total",                                  precision: 11, scale: 2
    t.decimal  "descontos",                              precision: 11, scale: 2
    t.decimal  "acrescimos",                             precision: 11, scale: 2
    t.decimal  "bc_icms",                                precision: 11, scale: 2
    t.decimal  "icms",                                   precision: 11, scale: 2
    t.decimal  "op_isentas_nao_tributadas",              precision: 11, scale: 2
    t.decimal  "outros",                                 precision: 11, scale: 2
    t.decimal  "aliquota_icms",                          precision: 4,  scale: 2
    t.string   "situacao",                    limit: 1
    t.string   "ano_mes_ref_apuracao",        limit: 4
    t.string   "brancos",                     limit: 5
    t.string   "cod_autent_dig_registro",     limit: 32
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "item_documentos_fiscais", ["ano_mes_ref_apuracao"], name: "index_item_documentos_fiscais_on_ano_mes_ref_apuracao", using: :btree
  add_index "item_documentos_fiscais", ["classe_consumo_tp_assinante"], name: "index_item_documentos_fiscais_on_classe_consumo_tp_assinante", using: :btree
  add_index "item_documentos_fiscais", ["cnpj_cpf"], name: "index_item_documentos_fiscais_on_cnpj_cpf", using: :btree
  add_index "item_documentos_fiscais", ["cod_classificacao_item"], name: "index_item_documentos_fiscais_on_cod_classificacao_item", using: :btree
  add_index "item_documentos_fiscais", ["data_emissao"], name: "index_item_documentos_fiscais_on_data_emissao", using: :btree
  add_index "item_documentos_fiscais", ["fase_tipo_utilizacao"], name: "index_item_documentos_fiscais_on_fase_tipo_utilizacao", using: :btree
  add_index "item_documentos_fiscais", ["grupo_tensao"], name: "index_item_documentos_fiscais_on_grupo_tensao", using: :btree
  add_index "item_documentos_fiscais", ["numero"], name: "index_item_documentos_fiscais_on_numero", using: :btree
  add_index "item_documentos_fiscais", ["situacao"], name: "index_item_documentos_fiscais_on_situacao", using: :btree

  create_table "mestre_documentos_fiscais", force: :cascade do |t|
    t.string   "cnpj_cpf",                    limit: 14
    t.string   "ie",                          limit: 14
    t.string   "razao_social",                limit: 35
    t.string   "uf",                          limit: 2
    t.string   "classe_consumo_tp_assinante", limit: 1
    t.string   "fase_tipo_utilizacao",        limit: 1
    t.string   "grupo_tensao",                limit: 2
    t.string   "cod_ident_consumidor",        limit: 12
    t.string   "data_emissao",                limit: 8
    t.string   "modelo",                      limit: 2
    t.string   "serie",                       limit: 3
    t.string   "numero",                      limit: 9
    t.string   "cod_autent_dig_doc_fiscal",   limit: 32
    t.decimal  "valor_total",                            precision: 12, scale: 2
    t.decimal  "bc_icms",                                precision: 12, scale: 2
    t.decimal  "icms",                                   precision: 12, scale: 2
    t.decimal  "op_isentas_nao_tributadas",              precision: 12, scale: 2
    t.decimal  "outros",                                 precision: 12, scale: 2
    t.string   "situacao_documento",          limit: 1
    t.string   "ano_mes_ref_apuracao",        limit: 4
    t.string   "ref_item_nf",                 limit: 9
    t.string   "num_terminal_num_conta",      limit: 10
    t.string   "brancos",                     limit: 3
    t.string   "cod_autent_dig_registro",     limit: 32
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "mestre_documentos_fiscais", ["ano_mes_ref_apuracao"], name: "index_mestre_documentos_fiscais_on_ano_mes_ref_apuracao", using: :btree
  add_index "mestre_documentos_fiscais", ["classe_consumo_tp_assinante"], name: "index_mestre_documentos_fiscais_on_classe_consumo_tp_assinante", using: :btree
  add_index "mestre_documentos_fiscais", ["cnpj_cpf"], name: "index_mestre_documentos_fiscais_on_cnpj_cpf", using: :btree
  add_index "mestre_documentos_fiscais", ["cod_autent_dig_doc_fiscal"], name: "index_mestre_documentos_fiscais_on_cod_autent_dig_doc_fiscal", using: :btree
  add_index "mestre_documentos_fiscais", ["cod_ident_consumidor"], name: "index_mestre_documentos_fiscais_on_cod_ident_consumidor", using: :btree
  add_index "mestre_documentos_fiscais", ["fase_tipo_utilizacao"], name: "index_mestre_documentos_fiscais_on_fase_tipo_utilizacao", using: :btree
  add_index "mestre_documentos_fiscais", ["grupo_tensao"], name: "index_mestre_documentos_fiscais_on_grupo_tensao", using: :btree
  add_index "mestre_documentos_fiscais", ["num_terminal_num_conta"], name: "index_mestre_documentos_fiscais_on_num_terminal_num_conta", using: :btree
  add_index "mestre_documentos_fiscais", ["ref_item_nf"], name: "index_mestre_documentos_fiscais_on_ref_item_nf", using: :btree
  add_index "mestre_documentos_fiscais", ["situacao_documento"], name: "index_mestre_documentos_fiscais_on_situacao_documento", using: :btree

end
