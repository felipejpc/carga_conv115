class ChangeControlesIdentificacoesNomeArqMestre < ActiveRecord::Migration
  def up
      change_table :controles_identificacoes do |t|
        t.change :nome_arq_mestre, :string, :limit => 15
      end
    end

    def down
      change_table :controles_identificacoes do |t|
        t.change :nome_arq_mestre, :string, :limit => 13
      end
    end
end
