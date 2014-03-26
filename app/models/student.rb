class Student < ActiveRecord::Base
  attr_accessible :degree, :name, :student_number
  validates_presence_of :name, :student_number, :degree
  has_many :studentgrades
end
