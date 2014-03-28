class Studentgrade < ActiveRecord::Base
  attr_accessible :date, :grade, :student_id
  belongs_to :student
  #validate :date_in_past, on: :create

  validates :date,
            :date => {
                :before => Time.now + 1.minute
            }
            #:date => { :after => Time.now, :before => Time.now + 1.year }

  #validate :date_in_future, on: :update

    #def date_in_past
    #
    #  Studentgrade.where('date < ?', Date.today).all
    #
    #end

  #def date_in_future
  #  if :date.valid_until.future? &&valid_until < 7.days.since(Time.now).to_date
  #
  #  end
  #end
end
