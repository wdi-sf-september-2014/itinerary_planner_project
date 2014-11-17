ItineraryPlanner::Application.routes.draw do
  resources :itineraries, only: [:new, :create, :index, :show] do
    resources :waypoints, only: [:new, :create]
  end

  resources :travelers, only: [:new, :create, :index, :show]

  root 'home#index'
end
