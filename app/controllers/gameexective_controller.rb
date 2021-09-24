class OurexectivesController < ApplicationController
    before_action :authenticate_user!
    def create
        ourexective = Ourexective.new(ourexective_params)
        ourexective.user_id = current_user.id
         if ourexective.save
           redirect_to members_path
         else
           redirect_to members_path
         end    
    end

    def edit
        @ourexective = Ourexective.find(params[:id])
    end

    def update
        ourexective = Ourexective.find(params[:id])
        if ourexective.update(ourexective_params)
          redirect_to members_path, :id => ourexective.id
        else
          redirect_to members_path
        end
    end

    def destroy
        ourexective = Ourexective.find(params[:id])
        ourexective.destroy
        redirect_to members_path
    end

    private
    def ourexective_params
        params.require(:ourexective).permit(:name, :rank)
    end
    
end
