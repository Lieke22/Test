class Student < ActiveRecord::Base
  attr_accessible :degree, :name, :student_number, :scriptie
  validates_presence_of :name, :student_number
  has_many :studentgrades
  validates :scriptie, uniqueness: true
end
