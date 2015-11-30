class AddDayOfTheWeekToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :day_of_week, :string
  end
end
