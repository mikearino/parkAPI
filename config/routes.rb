Rails.application.routes.draw do


  concern :api_base do
    get "/locations/most_popular" => 'locations#most_popular'
    get "/locations/random" => 'locations#random'
    resources :locations do
      resources :reviews
    end
  end

  namespace :v1 do
    concerns :api_base
  end
end
