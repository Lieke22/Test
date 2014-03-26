class CreateStudentgrades < ActiveRecord::Migration
  def change
    create_table :studentgrades do |t|
      t.string :grade
      t.integer :student_id
      t.date :date
      t.text :scriptie
      t.timestamps
    end
  end
end
