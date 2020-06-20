class RootController < ApplicationController
  def index
    @novels = Novel.all
    if params[:title].present?
      @novels = @novels.get_by_title params[:title]
    end
    if params[:genre].present?
      @novels = @novels.get_by_genre params[:genre]
    end
  end
end
