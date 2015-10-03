class CreateAppointments < ActiveRecord::Migration
  def up
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
    end
  end

  def down
    drop_table :appointments
  end
end
