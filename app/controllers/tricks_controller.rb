class TricksController < ApplicationController
  before_action :all_tricks, only: [:index, :create]
  respond_to :html, :js

  def show
    @trick = Trick.find(params[:id])
  end

  def new
    @trick = Trick.new
  end

  def create
    trick = current_user.tricks.create(trick_params)
    redirect_to trick_path(trick)
  end

  private

  def all_tricks
    @tricks = Trick.all
  end

  def trick_params
    params.require(:trick).permit(:name, :description, :youtube_url, :purpose)
  end

end
