class StoriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @title = params[:title]
    @genre = params[:genre]
    @overall = params[:overall]
    @subtitle = params[:subtitle]
    @tag = params[:tag]
    @content = params[:content]
    @comment = params[:comment]
    if params[:back]
      
    elsif params[:commit]
      novel = Novel.new
      novel.title = @title
      novel.save
      story = Story.new
      story.subtitle = @subtitle
      story.content = @content
      story.novel_id = novel.id
      #story.penname_id = current_user.id
      story.save
      redirect_to '/mypage'
    else 
      
    end
  end

  def preview
    @title = params[:title]
    @genre = params[:genre]
    @overall = params[:overall]
    @subtitle = params[:subtitle]
    @tag = params[:tag]
    @content = params[:content]
    @comment = params[:comment]
  end
end
