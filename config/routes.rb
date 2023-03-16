Rails.application.routes.draw do


  root 'demo#index'
  get 'demo/index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/about'
  get 'demo/contact_us'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/edit'
  # get 'pages/delete'
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  # get 'test/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #Default routes
  # get ':controller(/:action(/:id))'
end
