class ChangeControlesIdentificacoes < ActiveRecord::Migration
def up
  change_table :controles_identificacoes do |t|
    t.change :nome_arq_item, :string, :limit => 15
    t.change :nome_arq_destinatario, :string, :limit => 15
  end
end

def down
  change_table :controles_identificacoes do |t|
    t.change :nome_arq_item, :string, :limit => 13
    t.change :nome_arq_destinatario, :string, :limit => 13
  end
end
end
