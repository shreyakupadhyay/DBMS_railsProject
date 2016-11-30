Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'ipcommittee/show'
  post 'ipcommittee/updatestatus'
  get 'ipcommittee/index'
  get '/dashboard', :to => 'ipassets#index'
 get 'ipcommittee/show/:id',to: "ipcommittee#show" #, as: "review_ip"
  devise_scope :user do
      get '/logout',  :to => 'devise/sessions#destroy'
      get '/login' , :to => 'devise/sessions#new'
      get '/signup' , :to => 'devise/registrations#new'
    end
  
  
  ActiveAdmin.routes(self)
  get 'welcome/new'
  post 'welcome/signup'
  resources :ipassets
  authenticated :user do
   root :to => 'ipassets#index', as: :authenticated_root
  end
  #root 'ipassets#index'
 
  get "new" => 'ipasset#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
