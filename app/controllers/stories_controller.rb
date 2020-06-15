class StoriesController < ApplicationController
  protect_from_forgery
  def index
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
    @story.build_novel
  end

  def preview
    @story = Story.new(story_params)
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id

    if params[:back]
      render :new
    elsif @story.save
      redirect_to novels_path, notice: '投稿を保存しました。' 
    else
      render action: 'new' 
    end
  end

  private

  def story_params
    params.require(:story).permit(:subtitle, :content, :penname, :user_id, :comment, :parent_story_id, :novel_id, novel_attributes: [:title, :genre, :summary])
  end
end