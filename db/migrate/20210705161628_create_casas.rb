class CreateCasas < ActiveRecord::Migration[6.1]
  def change
    create_table :casas do |t|
      t.integer :metragem
      t.string :local
      t.integer :dormitorios
      t.integer :suites
      t.integer :banheiro
      t.integer :garagem
      t.float :preco
      t.float :condominio
      t.float :desconto_num

      t.timestamps
    end
  end
end
