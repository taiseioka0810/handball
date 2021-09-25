class GamesController < ApplicationController
  before_action :authenticate_user!
    def index
      @ourmembers = Ourmember.all
      @ourexectives = Ourexective.all
      @games = Game.all
      @timeouts = TimeOut.all
      @input_show = Input.find(params[:id])
      # ourmember,ourexective,gamemember,gameexectiveも同上
      @game = Game.new
      @timeout = TimeOut.new
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
        redirect_to :action => "index", :id => game.input_id
      else
        redirect_to :action => "index"
      end
    end


    def destroy
      game = Game.find(params[:id])
      game.destroy
      redirect_to :action => "index", :id => game.input_id
    end


    private
    def game_params
      params.require(:game).permit(:back_number, :time, :action,:input_id)
    end

end
