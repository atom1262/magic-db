class HomesController < ApplicationController

  def show
    @tricks = Trick.all.order("created_at DESC")
    @posts = Post.all.order("created_at DESC")
  end

end
