class OurexectivesController < ApplicationController
  # このコントローラーは必要ないと思うが一応残している

  
    before_action :authenticate_user!, only: [:create]
    def create
        members4 = Ourexective.new(members4_params)
        members4.user_id = current_user.id
         if members4.save
           redirect_to members_path
         else
           redirect_to members_path
         end    
    end

    def edit
        @members4 = Ourexective.find(params[:id])
    end

    def update
        members4 = Ourexective.find(params[:id])
        if members4.update(members4_params)
          redirect_to members_path, :id => members4.id
        else
          redirect_to members_path
        end
    end

    def destroy
        members4 = Ourexective.find(params[:id])
        members4.destroy
        redirect_to members_path
    end

    private
    def members4_params
        params.require(:ourexective).permit(:name, :rank)
    end
    
end


