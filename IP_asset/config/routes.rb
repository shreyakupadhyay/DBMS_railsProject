Rails.application.routes.draw do
  #devise_for :users
  get 'welcome/new'
  post 'welcome/signup'
  resources :ipassets
  root 'ipassets#index'
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'ipcommittee/show'
  post 'ipcommittee/updatestatus'
  get 'ipcommittee/index'
	devise_scope :user do
	  get '/logout',  :to => 'devise/sessions#destroy'
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
