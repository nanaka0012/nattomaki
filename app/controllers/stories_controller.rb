class StoriesController < ApplicationController
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
    @story = Story.new(first_story_params)
  end

  def create
    @story = Story.new(first_story_params)
    @story.user_id = current_user.id

    if params[:back]
      render :new
    elsif @story.save
      redirect_to novels_path, notice: '投稿を保存しました。' 
    else
      render action: 'new', notice: '投稿に失敗しました。'  
    end
  end

  def next_new
    @story = Story.new
    parent = Story.find_by(id: params[:id])
    @story.parent = parent
    @story.novel = parent.novel
  end

  def next_preview
    @story = Story.new(next_story_params)
    parent = Story.find_by(id: params[:id])
    @story.parent = parent
    @story.novel_id = parent.novel_id

  end

  def next_create
    @story = Story.new(next_story_params)
    @story.user_id = current_user.id
    parent = Story.find_by(id: params[:id])
    @story.parent = parent
    @story.novel_id = parent.novel_id
    @story.parent_id = parent.id

    if params[:back]
      render :next_new
    elsif @story.save
      redirect_to novel_path, notice: '投稿を保存しました。' 
    else
      render action: 'next_new', notice: '投稿に失敗しました。'  
    end
  end

  private

  def first_story_params
    params.require(:story).permit(:subtitle, :content, :penname, :user_id, :comment, novel_attributes: [:title, :genre, :summary])
  end

  def next_story_params
    params.require(:story).permit(:subtitle, :content, :penname, :user_id, :comment, :parent_id, :novel_id)
  end
end