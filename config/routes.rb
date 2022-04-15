Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/customize", to: "pages#customize"

  resources :products
end
