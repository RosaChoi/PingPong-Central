class WelcomeController < ApplicationController

  # Allow access to pages in this controller without authenticating user first.
  skip_before_action :authenticate_player

  def index
    @players = Player.all
    @player = Player.find(params[:id])
  end
  
end
