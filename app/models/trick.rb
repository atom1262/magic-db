class Trick < ActiveRecord::Base
  belongs_to :user
  has_many :tags

  def author
    user.email
  end

end
