class ChangeControlesIdentificacoesBrancos < ActiveRecord::Migration
  def up
    change_table :controles_identificacoes do |t|
      t.change :brancos, :string, :limit => 42
    end
  end

  def down
    change_table :controles_identificacoes do |t|
      t.change :brancos, :string, :limit => 17
    end
  end
end
