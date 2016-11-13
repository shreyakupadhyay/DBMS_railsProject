Rails.application.routes.draw do
  get 'welcome/new'
  post 'welcome/signup'
  resources :ipassets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
