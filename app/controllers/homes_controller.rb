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
    # @home1 = Input.find(params[:id])
    # @home2 = Game.find(params[:id])
    # @home3 = Ourmember.find(params[:id])
    # @home4 = Ourexective.find(params[:id])
    # @home5 = Gamemember.find(params[:id])
    # @home6 = Gameexective.find(params[:id])
    # @home7 = TimeOut.find(params[:id])
  end

  def edit
    
  end
end
