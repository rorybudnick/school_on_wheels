class Tutor < ActiveRecord::Base
  has_many :available_time_slots
  has_many :students
  has_many :appointments


  validates :first_name, presence: true
  validates :email, uniqueness: true
  self.has_secure_password()
end