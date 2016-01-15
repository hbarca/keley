Keley::Application.routes.draw do

  get "products/show"

  get "admin/index"
  get "welcome/index"

  devise_for :users

  namespace :admin do
    resources :products
    resources :tags
  end

  root :to => 'welcome#index'

end
