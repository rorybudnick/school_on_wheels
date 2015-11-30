class ChangeTutorsAddressToText < ActiveRecord::Migration
  def change
    remove_column :tutors, :address, :string
    add_column :tutors, :address, :text
  end
end
