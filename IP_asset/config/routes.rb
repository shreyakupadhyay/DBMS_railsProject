Rails.application.routes.draw do
  #devise_for :users
  get 'welcome/new'
  post 'welcome/signup'
  resources :ipassets
  root 'ipassets#index'
  devise_for :users, controllers: { registrations: "users/registrations" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
