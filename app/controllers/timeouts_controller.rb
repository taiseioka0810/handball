class TimeoutsController < ApplicationController
    before_action :authenticate_user!
    def create
        timeout = TimeOut.new(timeout_params)
        # timeout.user_id = current_user.id
         if timeout.save
           redirect_to games_index_path(timeout.input_id)
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
          redirect_to games_index_path(timeout.input_id)
        else
          redirect_to games_path
        end
    end
    
    def destroy
        timeout = TimeOut.find(params[:id])
        timeout.destroy
        redirect_to games_index_path(timeout.input_id)
    end
    
    private
    def timeout_params
        params.require(:time_out).permit(:time, :our, :order, :input_id)
    end
    
end
