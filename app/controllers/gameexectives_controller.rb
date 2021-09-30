class GameexectivesController < ApplicationController
    before_action :authenticate_user!
    def create
        gameexective = Gameexective.new(gameexective_params)
        gameexective.save!
        redirect_to games_index_path(gameexective.input_id)
    end

    def edit
        @gameexective = Gameexective.find(params[:id])
    end

    def update
        gameexective = Gameexective.find(params[:id])
        if gameexective.update(gameexective_params)
          redirect_to games_index_path(gameexective.input_id)
        else
          redirect_to games_index_path
        end
    end

    def destroy
        gameexective = Gameexective.find(params[:id])
        gameexective.destroy
        redirect_to games_index_path(gameexective.input_id)
    end

    private
    def gameexective_params
        params.require(:gameexective).permit(:our, :name, :rank, :input_id)
    end
    
end
