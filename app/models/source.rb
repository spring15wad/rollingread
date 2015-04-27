class Source < ActiveRecord::Base
  belongs_to :course, inverse_of: :sources

end
