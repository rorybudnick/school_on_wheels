class Student < ActiveRecord::Base
  has_many :tutors
  belongs_to :school
  belongs_to :location
  has_many :available_time_slots
  has_many :appointments

  validates :first_name, presence: true 
end