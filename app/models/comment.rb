class Comment < ActiveRecord::Base
  attr_accessible :feedback, :profile_id
  belongs_to :profile

end
