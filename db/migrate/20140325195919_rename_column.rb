class RenameColumn < ActiveRecord::Migration
    def change
      rename_column :students, :student_id, :student_number

    end
end
