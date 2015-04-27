class Assignment < ActiveRecord::Base
  belongs_to :course, inverse_of: :assignments


end
