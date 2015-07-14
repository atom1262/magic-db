class Trick < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable

  def author
    user.email
  end

end
