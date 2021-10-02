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
    @gamemember = Gamemember.find(params[:id])
    @gameexective = Gameexective.find(params[:id])
    @game = Game.find(params[:id])
    @timeout = TimeOut.find(params[:id])
  end

  def edit
    
  end
end
