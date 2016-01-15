Keley::Application.routes.draw do

  get "welcome/index"
  resources :admin, only: :index
  resources :products, only: [:index, :show]

  devise_for :users

  namespace :admin do

    resources :products do
      post :sort_list, on: :collection
    end

    resources :tags
  end

  root :to => 'welcome#index'

end
