StoreApp::Application.routes.draw do

  #categories controller
  root 'categories#index'

  get '/categories', to: 'categories#index', as: :categories
  get '/categories/:id', to: 'categories#show', as: :category
  get '/categories/new', to: 'categories#new', as: :new_category
  get "/categories/:id/edit", to: "categories#edit", as: :edit_category
  post '/categories', to: "categories#create"
  patch "/categories/:id",  to: "categories#update"

  #products controller

  get '/products', to: 'products#index', as: :products
  get '/products/:id', to: 'products#show', as: :product
  get '/products/new', to: 'products#new', as: :new_product
  get "/products/:id/edit", to: "products#edit", as: :edit_product
  post '/products', to: "products#create"
  patch "/products/:id",  to: "products#update"


end
