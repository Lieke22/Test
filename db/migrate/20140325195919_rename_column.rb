class RenameColumn < ActiveRecord::Migration
    def self.up
      rename_column :students, :student_id, :student_number
    end

    def self.down

    end
end
