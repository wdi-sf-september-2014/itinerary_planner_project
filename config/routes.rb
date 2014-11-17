ItineraryPlanner::Application.routes.draw do
  resources :itineraries, only: [:new, :create, :index, :show]
  get 'home/index'
  root 'home#index'
end
