class CreateCasaAlugars < ActiveRecord::Migration[6.1]
  def change
    create_table :casa_alugars do |t|
      t.string :local
      t.string :metragem
      t.integer :banheiros
      t.integer :suites
      t.integer :cozinhas
      t.integer :quartos
      t.integer :salas
      t.integer :garagem
      t.float :preco
      t.float :condominio
      t.float :desconto

      t.timestamps
    end
  end
end
