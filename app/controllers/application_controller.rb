class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  #新規登録時のストロングパラメータに「カラム」の追加
  def configure_permitted_parameters
    #新規登録時のストロングパラメータに「first_nameカラムlast_nameカラムserviseカラム」の追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :servise])
  end
end
