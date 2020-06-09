class StoriesController < ApplicationController
  protect_from_forgery
  def index
  end

  def show
  end

  def new
    @genres = Genre.all
    @title = params[:title]
    @genre = params[:genre]
    @overall = params[:overall]
    @subtitle = params[:subtitle]
    @tag = params[:tag]
    @content = params[:content]
    @comment = params[:comment]
    if params[:commit]
      novel = Novel.new
      novel.title = @title
      novel.genre_id = @genre
      novel.overall = @overall
      novel.save
      story = Story.new
      story.subtitle = @subtitle
      story.content = @content
      story.comment = @comment
      story.novel_id = novel.id
      #story.penname_id = current_user.id
      story.save
      tag = Tag.new
      tag.name = @tag
      tag.story_id = story.id
      tag.novel_id = novel.id
      tag.save
      redirect_to '/mypage'
    end
  end

  def preview
    @title = params[:title]
    @genre = Genre.find(params[:genre])
    @overall = params[:overall]
    @subtitle = params[:subtitle]
    @tag = params[:tag]
    @content = params[:content]
    @comment = params[:comment]
  end
end
