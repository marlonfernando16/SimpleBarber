class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :nome
      t.string :sobrenome
      t.string :cpf
      t.date :data_nascimento
      t.string :telefone

      t.timestamps
    end
  end
end
