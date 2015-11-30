class AddDayOfTheWeekToAvailableTimeSlots < ActiveRecord::Migration
  def change
    add_column :available_time_slots, :day_of_week, :string
  end
end
