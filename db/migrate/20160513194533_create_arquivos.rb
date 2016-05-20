class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.string :nome
      t.string :serie, :limit => 3
      t.string :referencia, :limit => 4
      t.string :status, :limit => 1
      t.string :tipo, :limit => 1
      t.string :volume, :limit => 3

      t.timestamps null: false
    end
  end
end
