class CreateAppointments < ActiveRecord::Migration
  def up
    create_table :appointments do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
    end
  end

  def down
    drop_table :appointments
  end
end
