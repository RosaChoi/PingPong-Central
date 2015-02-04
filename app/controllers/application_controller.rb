class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_player
  before_action :authenticate_player

  def current_player
  Player.find_by(id: session[:player_id])
  end

  private
  def authenticate_player
    redirect_to(signin_path) unless current_player
  end
end
