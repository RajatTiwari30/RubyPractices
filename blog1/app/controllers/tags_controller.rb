class TagsController < ApplicationController
  #before_action 
  def index
    @tags=Tag.all
  end
  def show
    @tag=Tag.find(params[:id])
  end
  def destroy
    @tag=Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path, notice: "Tag was successfully deleted."
  end

end
