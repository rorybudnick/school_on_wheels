class CreateTutors < ActiveRecord::Migration
  def up
    create_table :tutors do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :email_address
      t.string :password
      t.string :phone_number
      t.string :adress
      t.boolean :interviewed, default: false
      t.text :grades, array: true, default: []
      t.text :notes
      t.boolean :matched, default: false
      t.boolean :dv, default: false
      t.datetime :date_approved
      t.boolean :admin, default: false
    end
  end

  def down
    drop_table :tutors
  end
end
