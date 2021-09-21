class GamesController < ApplicationController
  before_action :authenticate_user!
    def index
      @inputs = Input.all
      @games = Game.all
      @input = Input.new
      @game = Game.new
    end

    def create
      if input_params
        input = Input.new(input_params)
        input.user_id = current_user.id
        input.save!
        redirect_to games_path
      end

      if game_params
        game = Game.new(game_params)
        # game.input_id = current_input.id
        game.save!
        redirect_to games_path
      end
    end

    def edit
      @input = Input.find(params[:input_id])
      @game = Game.find(params[:game_id])
    end

    def update
      if input_params
        input = Input.find(params[:input_id])
        input.update(input_params)
      end

      if game_params
        game = Game.find(params[:game_id])
        game.update(game_params)
      end
      redirect_to games_path
    end


    def destroy
      if input_params
        input = Input.find(params[:input_id])
        input.destroy
      end

      if game_params
        game = Game.find(params[:game_id])
        game.destroy
      end
      redirect_to games_path
    end


    private
    def input_params
      params.permit(:date,:place,:game_name,:gender,:game_round,:age)
    end

    def game_params
      params.permit(:back_number, :time, :action)
    end

end
