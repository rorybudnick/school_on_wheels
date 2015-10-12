# == Schema Information
#
# Table name: schools
#
#  id   :integer          not null, primary key
#  name :string
#

class School < ActiveRecord::Base
  has_many :students

  validates :name, presence: true
end
