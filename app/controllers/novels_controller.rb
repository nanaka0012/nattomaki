class NovelsController < ApplicationController
  protect_from_forgery
  def index
    @novels = Novel.all
  end

  def show
    @novels = Novel.find(params[:id])
    @stories = Story.where(novel_id: params[:id])
  end

  def new
  end
end
