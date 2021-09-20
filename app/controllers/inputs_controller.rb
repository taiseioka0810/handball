class InputsController < ApplicationController
# このinputsコントローラーは使わないと思うが一応残してる

before_action :authenticate_user!, only: [:index,:create]
def create
    input = Input.new(input_params)
    input.user_id = current_user.id
     if input.save
       redirect_to games_path
     else
       redirect_to games_path
     end    
end

def edit
    @input = Input.find(params[:id])
end

def update
    input = Input.find(params[:id])
    if input.update(input_params)
      redirect_to games_path, :id => input.id
    else
      redirect_to games_path
    end
end

def destroy
    input = Input.find(params[:id])
    input.destroy
    redirect_to games_path
end

private
def input_params
    params.require(:input).permit(:name, :rank)
end

end
