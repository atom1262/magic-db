class Trick < ActiveRecord::Base
  belongs_to :user

  def author
    user.email
  end

end
