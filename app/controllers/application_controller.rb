class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:current_user_id])
  end

  def sign_in
    if user = User.find_by(name: login_params[:name], password: login_params[:password])
      session[:current_user_id] = user.id
    else
      flash[:error] = 'Whaaat, you forgot something'
    end
    redirect_to root_path
  end

    def logout
    session[:current_user_id] = nil
    redirect_to root_path
  end

  private
  def login_params
    params.require(:user).permit(:name, :password)
  end
end
