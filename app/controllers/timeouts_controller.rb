class TimeoutsController < ApplicationController
    before_action :authenticate_user!
    def create
        timeout = TimeOut.new(timeout_params)
        timeout.user_id = current_user.id
         if timeout.save
           redirect_to games_path
         else
           redirect_to games_path
         end    
    end
    
    def edit
        @timeout = TimeOut.find(params[:id])
    end
    
    def update
        timeout = TimeOut.find(params[:id])
        if timeout.update(timeout_params)
          redirect_to games_path, :id => timeout.id
        else
          redirect_to games_path
        end
    end
    
    def destroy
        timeout = TimeOut.find(params[:id])
        timeout.destroy
        redirect_to games_path
    end
    
    private
    def timeout_params
        params.require(:timeout).permit(:time, :our, :order, :input_id)
    end
    
end
