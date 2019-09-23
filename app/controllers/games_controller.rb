class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    @games = Games.all
    render json: @games
  end

  def create
    @games = Game.create(game_params)
    render json: @games, status: 201
  end

  def show
    @games = Games.find(params[:id])
    render json: @games, status: 200
  end

  def update
    @games = Games.find(params[:id])
    @games.update(game_params)
    render json: @games, status: 204
  end


  private

  def game_params
    params.require(:state)
  end
end
