class MypageController < ApplicationController
  before_action :authenticate_user!
  def index
    redirect_to new_user_session_path if !user_signed_in?
    @stories = Story.where(user_id: current_user.id).order(created_at: "DESC")
  end

  def story_show
  end
end
