class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :who
      t.string :where
      t.datetime :when
      t.string :what

      t.timestamps null: false
    end
  end
end
