class Authentication::SessionsController < ApplicationController
  skip_before_action :no_login
  def new
    @user = User.new
  end

  def create
    user = User.find_by("email = :login OR username = :login", { login: params[:login] })

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Sesion iniciada"
    else
      redirect_to new_session_path, alert: "Datos invalidos"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end