class Course < ActiveRecord::Base
  belongs_to :semester, inverse_of: :courses
  has_many :sources
  has_many :assignments, through: :sources

  validates :course_number, :meet_days, :semester_id, presence: true
  validates :course_number, format: { with: /\A\D\D\D\d\d\d\Z/, message: "course number should be “three [A-Z] + three [0-9]”" }

end
