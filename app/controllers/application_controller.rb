class ApplicationController < ActionController::Base



    protected

    # 入力フォームからアカウント名情報をDBに保存するために追加
    def configure_permitted_parameters
      added_attrs = [ :name, :email, :password, :password_confirmation　]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end 
end
