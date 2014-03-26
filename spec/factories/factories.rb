FactoryGirl.define do

  factory :student do |s|
    s.student_number { [1,5,8].sample }
    s.name { Faker::Name.name }
    s.degree 7.5
    s.scriptie { Faker::Lorem.paragraphs(5) }
  end

  factory :studentgrade do |s|
    s.grade {['A', 'B', 'C', 'D', 'E', 'F'].sample}
    s.student_id {Faker::Number.number(3)}
    s.date { rand(30).days.ago }
  end


end