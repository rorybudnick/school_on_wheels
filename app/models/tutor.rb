# == Schema Information
#
# Table name: tutors
#
#  id            :integer          not null, primary key
#  first_name    :string           not null
#  last_name     :string
#  email_address :string
#  password      :string
#  phone_number  :string
#  address       :string
#  interviewed   :boolean          default(FALSE)
#  grades        :text             default([]), is an Array
#  notes         :text
#  matched       :boolean          default(FALSE)
#  dv            :boolean          default(FALSE)
#  date_approved :datetime
#  admin         :boolean          default(FALSE)
#

class Tutor < ActiveRecord::Base
  has_many :available_time_slots
  has_many :students
  has_many :appointments


  validates :first_name, presence: true
  validates :email_address, uniqueness: true
  self.has_secure_password()
end
