# == Schema Information
#
# Table name: appointments
#
#  id         :integer          not null, primary key
#  start_time :datetime         not null
#  end_time   :datetime         not null
#

class Appointment < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :student

  validates  :start_time, presence: true 
  validates  :end_time, presence: true 
end
