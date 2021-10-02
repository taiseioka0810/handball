class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    @gamemembers = Gamemember.all
    @gameexectives = Gameexective.all
    @gamemember = Gamemember.new
    @gamemember = Gamemember.new
    @input_show = Input.all.where(user_id: current_user.id)
    @input = Input.new
  end


  def show
    @input = Input.find(params[:id])
    @gamemember = Gamemember.all
    @gameexective = Gameexective.all
    @game = Game.all
    @timeout = TimeOut.all
    # @totalscore = Game.find
    # ↑各選手の得点の集計出す変数
  end

  def edit
    
  end
end
