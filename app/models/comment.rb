class Comment < ActiveRecord::Base
  attr_accessible :feedback
  belongs_to :profile

end
