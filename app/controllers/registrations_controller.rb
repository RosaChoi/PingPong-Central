class RegistrationsController < ApplicationController

  skip_before_action :authenticate_player

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      session[:player_id] = @player.id
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def player_params
    params.require(:player).permit(
      :name,
      :email,
      :password,
      :password_confirmation,
    )
  end

end
