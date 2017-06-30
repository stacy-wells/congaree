Rails.application.routes.draw do
  root "parks#index"
  resources :parks, only: [:index, :show]

  namespace :charts do
    get "total-visits"
    get "park-annual-visitors"
    get "acerage-by-park"
    get "visitors-by-park"
  end
end
