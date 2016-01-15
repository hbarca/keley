Keley::Application.routes.draw do

 
  get "welcome/index"
  resources :admin, only: :index

  devise_for :users

  namespace :admin do
    resources :products
    resources :tags
  end

  root :to => 'welcome#index'

end
