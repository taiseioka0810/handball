class GameexectivesController < ApplicationController
    before_action :authenticate_user!
    def create
        gameexective = Gameexective.new(gameexective_params)
        gameexective.user_id = current_user.id
         if gameexective.save
           redirect_to ourmembers_path
         else
           redirect_to ourmembers_path
         end    
    end

    def edit
        @gameexective = Gameexective.find(params[:id])
    end

    def update
        gameexective = Gameexective.find(params[:id])
        if gameexective.update(gameexective_params)
          redirect_to ourmembers_path, :id => gameexective.id
        else
          redirect_to ourmembers_path
        end
    end

    def destroy
        gameexective = Gameexective.find(params[:id])
        gameexective.destroy
        redirect_to ourmembers_path
    end

    private
    def gameexective_params
        params.require(:gameexective).permit(:name, :rank)
    end
    
end
