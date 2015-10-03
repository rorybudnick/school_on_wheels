class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :phone_number
      t.string :grade
      t.date   :birthdate
      t.boolean :matched, default: false
    end
  end

  def down
    drop_table :students
  end
end
