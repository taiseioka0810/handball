class MembersController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @members1 = Ourmember.all
    @members2 = Ourexective.all
    @members3 = Ourmember.new
    @members4 = Ourexective.new
  end


  def create
    members3 = Ourmember.new(members3_params)
    members3.user_id = current_user.id
    if members3.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end


  def edit
    @members3 = Ourmember.find(params[:id])
  end


  def update
    members3 = Ourmember.find(params[:id])
    if members3.update(members3_params)
      redirect_to :action => "index", :id => members3.id
    else
      redirect_to :action => "index"
    end
  end


  def destroy
    members3 = Ourmember.find(params[:id])
    members3.destroy
    redirect_to action: :index
  end


  private
  def members3_params
    params.require(:ourmember).permit(:name, :back_number)
  end


end
