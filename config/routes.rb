Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'statics#index'
  resources :homes
  resources :games
  resources :ourmembers
  resources :ourexectives
  resources :inputs
  resources :timeouts
  resources :gamemembers
  resources :gameexectives

  get 'games/index/:id' => 'games#index',as:'games_index'

  get 'statics/index' => 'statics#index'
  get 'statics/about' => 'statics#about'
  get 'statics/score' => 'statics#score'
  
end
