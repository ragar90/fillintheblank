Rails.application.routes.draw do
  devise_for :owners
  devise_for :artists
  resources :artists, except: [:new, :create, :destroy] do
  	member do
  		get "my_profile" => "artists#my_profile", as: :my_profile
  	end
  end
  resources :owners, except: [:new, :create, :destroy]
  resources :blank_walls
  get 'home/index'
  get "sign_in" => "home#sign_in", as: :sign_in
  root 'home#index'
end
