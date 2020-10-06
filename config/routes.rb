Rails.application.routes.draw do
  resources :hardwares
  get 'pages/home'
  get 'pages/hardwares'
  get 'pages/contact'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
