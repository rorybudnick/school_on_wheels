class CreateAvailableTimeSlots < ActiveRecord::Migration
  def up
    create_table :available_time_slots do |t|
      t.datetime :start_time
      t.datetime :end_time
    end
  end

  def down
    drop_table :available_time_slots
  end
end
