class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @games = Game.create(game_params)
    render json: @games
  end

  def show

  end

  def update

  end

  def index
    @games = Games.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [])
  end
end
