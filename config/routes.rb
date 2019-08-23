Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/locations/random" => 'locations#random'
  get "/locations/most_popular" => 'locations#most_popular'
  concern :api_base do
    resources :locations do
      resources :reviews
    end
  end
  namespace :v1 do
    concerns :api_base
  end
end
