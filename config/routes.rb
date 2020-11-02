Rails.application.routes.draw do
  root "top#index"
  get "about" => "top#about", as: "about"

  resources :friends do 
    get "search", on: :collection
    resources :tels, only: [:index, :show, :new, :create, :destroy]
  end
  resources :tels , only: [:index, :show, :new, :create, :destroy]
end
