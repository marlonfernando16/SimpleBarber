class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.float :total
      t.string :status
      t.string :cartao
      t.references :customer, foreign_key: true
      t.references :barber, foreign_key: true

      t.timestamps
    end
  end
end
