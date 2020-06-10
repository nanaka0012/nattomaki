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
  end

  def create
    # ストロングパラメータから精査されたデータだけをインスタンスに格納
    @story = Story.new(story_params)
    @story.user_id = current_user.id

    if params[:preview_button] || !@story.save
      flash[:danger] = "データの登録に失敗しました"
      render :new
    else
      flash[:success] = "データを登録しました"
      redirect_to novels_path
    end
  end

  private

  def story_params
    params.require(:story).permit(:subtitle, :content, :genre, :penname, :user_id, :comment, novel_attributes: [:title, :summary])
  end
end