class OurmembersController < ApplicationController
  before_action :authenticate_user!
  def index
    @ourmembers = Ourmember.all
    @ourexectives = Ourexective.all
    @ourmember = Ourmember.new
    @ourexective = Ourexective.new
  end


  def create
    ourmember = Ourmember.new(ourmember_params)
    ourmember.user_id = current_user.id
    if ourmember.save
      redirect_to action: "index"
    else
      redirect_to action: "index"
    end
  end


  def edit
    @ourmember = Ourmember.find(params[:ourmember_id]) if params[:ourmember_id] 
    @ourexective = Ourexective.find(params[:ourexective_id]) if params[:ourexective_id]
  end


  def update
    ourmember = Ourmember.find(params[:id])
    if ourmember.update(ourmember_params)
      redirect_to :action => "index", :id => ourmember.id
    else
      redirect_to :action => "index"
    end
  end


  def destroy
    ourmember = Ourmember.find(params[:id])
    ourmember.destroy
    redirect_to action: :index
  end


  private
  def ourmember_params
    params.require(:ourmember).permit(:name, :back_number)
  end

end
