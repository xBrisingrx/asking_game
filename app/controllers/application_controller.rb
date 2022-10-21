class ApplicationController < ActionController::Base
  # numero de preguntas del juego
  # number_of_questions = 5
  include Pundit::Authorization
  include Pagy::Backend
  
  helper_method :current_user, :logged_in?
  before_action :no_login
  add_flash_types :info, :error, :warning, :success
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def logged_in?
    !!current_user
  end

  def no_login
    if !logged_in?
      redirect_to new_session_path
    end
  end
end
