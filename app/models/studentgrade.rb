class Studentgrade < ActiveRecord::Base
  attr_accessible :date, :grade, :student_id
  belongs_to :student
end
