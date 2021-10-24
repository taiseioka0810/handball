class GamesController < ApplicationController
  before_action :authenticate_user!
    def index
      @gamemembers = Gamemember.all
      @gameexectives = Gameexective.all
      @games = Game.all
      @timeouts = TimeOut.all
      @input_show = Input.find(params[:id])
      @gamemember = Gamemember.new
      @gameexective = Gameexective.new
      @game = Game.new
      @timeout = TimeOut.new
      @ourmembers = Ourmember.where(user_id: current_user.id)
      @ourexectives = Ourexective.where(user_id: current_user.id)
      

  
      end

    def create
      game = Game.new(game_params)
      game.save!
      redirect_to :action => "index", :id => game.input_id
    end

    def edit
      @game = Game.find(params[:game_id]) if params[:game_id]
      @timeout = TimeOut.find(params[:timeout_id]) if params[:timeout_id]
      @gamemember = Gamemember.find(params[:gamemember_id]) if params[:gamemember_id]
      @gameexective = Gameexective.find(params[:gameexective_id]) if params[:gameexective_id]
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
      params.require(:game).permit(:our, :back_number, :time_minute, :time_second, :action, :half, :input_id)
    end

end
