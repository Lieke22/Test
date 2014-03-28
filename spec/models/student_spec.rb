require 'spec_helper'

describe Student do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:student_number) }
  it { should validate_uniqueness_of(:scriptie) }
end
