require 'spec_helper'

describe Student do

  it "is valid with proper values" do
    students = create_list(:student, 100)

    students.each do |student|
      student.should be_valid
    end
  end

  it 'is not valid without a name' do
    student = Student.new student_id: 8, degree: 7.5
    student.should_not be_valid
  end

  it 'is not valid without a student_id' do
    student = Student.new name: 'Erik', degree: 6
    student.should_not be_valid
  end

  it 'save valid student' do
    student = Student.new name: 'Lieke', student_id: 1, degree: 7
    student.should be_valid
    student.save
  end
end
