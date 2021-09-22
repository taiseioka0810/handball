class HomesController < ApplicationController
  before_action :authenticate_user!
  def index
    # @homes2 = Game.all
    # @homes3 = Ourmember.all
    # @homes4 = Ourexective.all
    # @homes5 = Gamemember.all
    # @homes6 = Gameexective.all
    # @homes7 = TimeOut.all
    @input_show=Input.all.where(user_id: current_user.id)
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
end
