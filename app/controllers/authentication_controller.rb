class AuthenticationController < ApplicationController

  skip_before_action :authenticate_player

  def create
    player = Player.find_by_email(params[:email])
    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      redirect_to root_path
    else
      @sign_in_error = "Username / password combination is invalid"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
