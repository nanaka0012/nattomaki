class NovelsController < ApplicationController
  def index
    @novels = Novel.all.order(updated_at: "DESC")
  end

  def show
    @novels = Novel.find(params[:id])
    @first = Story.where(novel_id: params[:id]).find_by(parent_id: nil)
  end

  def new
  end
end
