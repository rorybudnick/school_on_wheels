# == Schema Information
#
# Table name: students
#
#  id                :integer          not null, primary key
#  first_name        :string           not null
#  last_name         :string
#  parent_first_name :string
#  parent_last_name  :string
#  phone_number      :string
#  grade             :string
#  birthdate         :date
#  matched           :boolean          default(FALSE)
#

class Student < ActiveRecord::Base
  has_many :tutors
  belongs_to :school
  belongs_to :location
  has_many :available_time_slots
  has_many :appointments

  validates :first_name, presence: true 
end
