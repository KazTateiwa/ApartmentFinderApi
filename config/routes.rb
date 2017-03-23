Rails.application.routes.draw do
  get 'admin/index'

  get 'admin/update'
  get "admin" => "admin#index"
  put "admin/:id" => "admin#update"
  patch "admin/:id" => "admin#update"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users
  root 'apartments#index'
  resources :apartments do
    # GET /apartments/:apartment_id/map_locations
  get 'map_location'

end

# devise_scope :user do
#   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
# end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
