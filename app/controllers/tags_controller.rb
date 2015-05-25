class TagsController < ApplicationController
  respond_to :html

  def create
    @trick = Trick.find(params[:trick_id])
    @tag = @trick.tags.create(tag_params)
    respond_with @trick
  end

  private

  def tag_params
    params.require(:tag).permit(:keywords)
  end

end
