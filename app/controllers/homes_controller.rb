class HomesController < ApplicationController

  def show
    @tricks = Trick.all
    @posts = Post.all
  end

end
