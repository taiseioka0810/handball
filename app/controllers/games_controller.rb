class GamesController < ApplicationController
  before_action :authenticate_user!
    def index
      @games = Game.all
      @input_show=Input.find(params[:id])
      @game = Game.new
    end

    def create
      game = Game.new(game_params)
      game.save!
      redirect_to :action => "index", :id => game.input_id
    end

    def edit
      @game = Game.find(params[:id])
    end

    def update
      game = Game.find(params[:id])
      if game.update(game_params)
        redirect_to games_path, :id => game.id
      else
        redirect_to games_path
      end
    end


    def destroy
      game = Game.find(params[:id])
      game.destroy
      redirect_to games_path
    end


    private
    def game_params
      params.require(:game).permit(:back_number, :time, :action,:input_id)
    end

end
