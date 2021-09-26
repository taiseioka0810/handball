class GamemembersController < ApplicationController
    def create
        gamemember = Gamemember.new(gamemember_params)
        # gamemember.user_id = current_user.id
        if gamemember.save
        redirect_to action: "index"
        else
        redirect_to action: "index"
        end
    end


    def edit
        @gamemember = Gamemember.find(params[:id])
    end


    def update
        gamemember = Gamemember.find(params[:id])
        if gamemember.update(gamemember_params)
        redirect_to :action => "index", :id => gamemember.id
        else
        redirect_to :action => "index"
        end
    end


    def destroy
        gamemember = Gamemember.find(params[:id])
        gamemember.destroy
        redirect_to action: :index
    end


    private
    def gamemember_params
        params.require(:gamemember).permit(:name, :back_number)
    end
end