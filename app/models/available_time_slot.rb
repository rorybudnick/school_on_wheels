# == Schema Information
#
# Table name: available_time_slots
#
#  id          :integer          not null, primary key
#  start_time  :datetime         not null
#  end_time    :datetime         not null
#  day_of_week :string
#

class AvailableTimeSlot < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :student
  
  validates  :start_time, presence: true 
  validates  :end_time, presence: true 
end
