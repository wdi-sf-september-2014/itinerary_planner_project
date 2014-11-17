ItineraryPlanner::Application.routes.draw do
  resources :itinerary, only: [:new]
  get 'home/index'
  root 'home#index'
end
