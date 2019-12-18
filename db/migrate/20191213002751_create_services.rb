class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :corte
      t.string :descricao
      t.float :preco

      t.timestamps
    end
  end
end
