class GamemembersController < ApplicationController
    def create
        gamemember = Gamemember.new(gamemember_params)
        # gamemember.user_id = current_user.id
        gamemember.save!
        redirect_to games_index_path(gamemember.input_id)
    end


    def edit
        @gamemember = Gamemember.find(params[:id])
    end


    def update
        gamemember = Gamemember.find(params[:id])
        if gamemember.update(gamemember_params)
        redirect_to games_index_path(gamemember.input_id)
        else
        redirect_to games_path
        end
    end


    def destroy
        gamemember = Gamemember.find(params[:id])
        gamemember.destroy
        redirect_to games_index_path(gamemember.input_id)
    end


    private
    def gamemember_params
        params.require(:gamemember).permit(:name, :our, :back_number, :input_id)
    end
end