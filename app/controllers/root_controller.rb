class RootController < ApplicationController
  def index
    redirect_to mypage_top_path if !user_signed_in?
  end
end
