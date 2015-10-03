class Location < ActiveRecord::Base
  has_many :appointments
  has_many :students

  validates  :name, presence: true 
end