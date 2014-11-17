ItineraryPlanner::Application.routes.draw do
  get "waypoints/new"
  get "waypoints/create"
  resources :itineraries, only: [:new, :create, :index, :show] do
    resources :waypoints, only: [:new, :create]
  end

  get 'home/index'
  root 'home#index'
end
