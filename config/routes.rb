Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#index'
  resources :homes
  resources :statics
  resources :games
  resources :ourmembers
  resources :ourexectives
  resources :inputs
  resources :timeouts

  get 'games/index/:id' => 'games#index',as:'games_index'

  get 'statics/top' => 'statics#top'
  get 'statics/about' => 'statics#about'
  get 'statics/score' => 'statics#score'
  
end
