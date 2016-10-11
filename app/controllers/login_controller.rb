class LoginController < ApplicationController
  def index
    # if your move login page , i will reset seesion value and current user
    session[:user_id] = nil
    @current_user = nil
    
  end

  def create
    user = Teacher.find_by :user_id => params[:user_id]

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id

      redirect_to activities_path

    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    @current_user = nil

    redirect_to login_path
  end
end
