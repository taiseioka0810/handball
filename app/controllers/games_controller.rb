class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:index,:create]
  def index
    @games = Game.all
    @inputs = Input.all
    @game = Game.new
    @input = Input.new
  end

  def create
    game = Game.new(game_params)
    # input.ourmember_id = current_ourmember.id
    game.save!

    input = Input.new(input_params)
    input.user_id = current_user.id
    input.save!
    redirect_to games_path
  end

  def edit
    game = Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    if game.update(game_params)
      redirect_to :action => "index", :id => game.id
    else
      redirect_to :action => "index"
    end
  end

  def destroy
    game = Game.find(params[:id])
    game.destroy
    redirect_to action: :index
  end

  private
  def game_params
    params.require(:game).permit(:back_number, :time, :action)
  end

end
