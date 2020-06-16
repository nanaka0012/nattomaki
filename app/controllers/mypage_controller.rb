class MypageController < ApplicationController
  def index
    redirect_to new_user_session_path if !user_signed_in?
    @stories = Story.where(user_id: current_user.id)
  end

  def story_show
  end
end
