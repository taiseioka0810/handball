class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:index,:create]
  def index
    @inputs = Input.all
    @games = Game.all
    @input = Input.new
    @game = Game.new
  end

  def create
    input = Input.new(input_params)
    input.user_id = current_user.id
    input.save!

    game = Game.new(game_params)
    game.input_id = current_input.id
    game.save!
    redirect_to games_path
  end

  def edit
    @input = Input.find(params[:id])
    @game = Game.find(params[:id])
  end

  def update
    input = Input.find(params[:id])
    input.update(input_params)

    game = Game.find(params[:id])
    game.update(game_params)
    redirect_to games_path
  end


  def destroy
    input = Input.find(params[:id])
    input.destroy

    game = Game.find(params[:id])
    game.destroy
    redirect_to games_path
  end

  private
  def input_params
    params.require(:input).permit(:date,:place)
  end

  def game_params
    params.require(:game).permit(:back_number, :time, :action)
  end


end
