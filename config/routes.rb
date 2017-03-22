Rails.application.routes.draw do
  devise_for :users
  root 'apartments#index'
  resources :apartments do
    # GET /apartments/:apartment_id/map_locations
  get 'map_location'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
