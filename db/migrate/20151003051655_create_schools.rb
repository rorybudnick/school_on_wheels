class CreateSchools < ActiveRecord::Migration
  def up
    create_table :schools do |t|
      t.string :name
    end
  end

  def down
    drop_table :schools
  end
end
