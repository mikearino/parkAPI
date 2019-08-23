Rails.application.routes.draw do

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
