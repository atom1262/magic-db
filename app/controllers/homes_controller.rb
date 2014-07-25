class HomesController < ApplicationController

  def show
    @tricks = Trick.all
  end

end
