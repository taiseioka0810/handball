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
    @gamemember = Gamemember.all.where(input_id: params[:id])
    @gameexective = Gameexective.all.where(input_id: params[:id])
    @game = Game.all.where(input_id: params[:id])
    @timeout = TimeOut.all.where(input_id: params[:id])


    games = Game.where(input_id: params[:id])
    a_game_members = Gamemember.where(input_id: params[:id]).where(our: "Aチーム")
    b_game_members = Gamemember.where(input_id: params[:id]).where(our: "Bチーム")
    @a_point = []
    @a_faul = []
    @a_two_minutes_faul = []
    @a_exit = []
    @b_point = []
    @b_faul = []
    @b_two_minutes_faul = []
    @b_exit = []
    a_game_members.each do |t| 
      @a_point << games.where(back_number: t.back_number).where(action: "得点").where(our:"Aチーム").count 
      @a_faul << games.where(back_number: t.back_number).where(action: "警告").where(our:"Aチーム").count
      @a_two_minutes_faul << games.where(back_number: t.back_number).where(action: "2分間退場").where(our:"Aチーム").count
      @a_exit << games.where(back_number: t.back_number).where(action: "退場").where(our:"Aチーム").count
    end 
    b_game_members.each do |t| 
      @b_point << games.where(back_number: t.back_number).where(action: "得点").where(our:"Bチーム").count 
      @b_faul << games.where(back_number: t.back_number).where(action: "警告").where(our:"Bチーム").count
      @b_two_minutes_faul << games.where(back_number: t.back_number).where(action: "2分間退場").where(our:"Bチーム").count
      @b_exit << games.where(back_number: t.back_number).where(action: "退場").where(our:"Bチーム").count
    end 
  end

  
  def edit
    @input = Input.find(params[:id])
  end
end
