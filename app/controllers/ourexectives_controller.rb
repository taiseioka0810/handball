class OurexectivesController < ApplicationController
    before_action :authenticate_user!
    def create
        ourexective = Ourexective.new(ourexective_params)
        ourexective.user_id = current_user.id
         if ourexective.save
           redirect_to ourmembers_path
         else
           redirect_to ourmembers_path
         end    
    end


    def update
        ourexective = Ourexective.find(params[:id])
        if ourexective.update(ourexective_params)
          redirect_to ourmembers_path, :id => ourexective.id
        else
          redirect_to ourmembers_path
        end
    end

    def destroy
        ourexective = Ourexective.find(params[:id])
        ourexective.destroy
        redirect_to ourmembers_path
    end

    private
    def ourexective_params
        params.require(:ourexective).permit(:name, :rank)
    end
    
end


