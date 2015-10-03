class CreateAvailableTimeSlots < ActiveRecord::Migration
  def up
    create_table :available_time_slots do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
    end
  end

  def down
    drop_table :available_time_slots
  end
end
