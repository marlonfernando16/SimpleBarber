class CreateServiceAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :service_attendances do |t|
      t.references :attendance, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
