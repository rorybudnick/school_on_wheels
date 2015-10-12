# == Schema Information
#
# Table name: locations
#
#  id   :integer          not null, primary key
#  name :string
#

class Location < ActiveRecord::Base
  has_many :appointments
  has_many :students

  validates  :name, presence: true 
end
