ItineraryPlanner::Application.routes.draw do
 root 'itineraries#index'
  
  resources :itineraries do
    resources :waypoints
    resources :travelers
  end
end
