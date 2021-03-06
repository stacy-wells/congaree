Rails.application.routes.draw do
  root "pages#home"
  resources :parks, only: [:index, :show]

  namespace :charts do
    get "total-visits"
    get "park-annual-visitors"
    get "acerage-by-park"
    get "visitors-by-park"
    get "parks-per-state"
  end

  get "about", to: "pages#about"
end
