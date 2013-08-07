class Profile < ActiveRecord::Base
  attr_accessible :name, :essay1, :essay2, :url

  has_many :comments

  before_save :make_custom_url

  def make_custom_url
    self.url = ((1..9).to_a + ('A'..'Z').to_a).sample(12).join
  end

end

