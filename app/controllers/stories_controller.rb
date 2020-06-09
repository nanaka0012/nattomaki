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
    # @story.penname = current_user

    # インスタンスの保存に成功した場合の処理
    if @story.save
      flash[:success] = "データを登録しました"
      redirect_to novels_path

    # インスタンスの保存に失敗した場合の処理
    else
      flash[:danger] = "データの登録に失敗しました"
      render :new
    end
  end

  private

  def story_params
    params.require(:story).permit(:subtitle, :content, :genre, :penname, :user_id, :comment, novel_attributes: [:title, :summary])
  end
end