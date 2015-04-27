class Course < ActiveRecord::Base
  belongs_to :semester, inverse_of: :courses
  has_many :sources
  has_many :assignments

  validates :course_number, :meet_days, :semester_id, presence: true
  validates :course_number, format: { with: /\A\D\D\D\d\d\d\Z/, message: "course number should be “three [A-Z] + three [0-9]”" }


  def every_meet_day(meet_days,start_date,end_date)

    all_days = ['']
    i = 0

    meet_days.each do | this_day |

      loop_date = start_date

      while loop_date.wday < this_day
        loop_date = Date.jd(loop_date.jd + 1)
      end

      while loop_date < end_date
        all_days[i] = loop_date
        loop_date = Date.jd(loop_date.jd + 7)
        i = i + 1
      end
    end
    return all_days.sort
  end


end
