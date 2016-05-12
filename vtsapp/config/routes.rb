Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do 
    get 'login' => :new
    get 'login' => :create
    get 'logout' => :destroy
  end

  get 'session/create'

  get 'session/destroy'

  resources :users
  resources :orders
  resources :line_items
  resources :line_items
  resources :carts
  
  get 'store/index'

  resources :products do 
  	get :who_bought, on: :member
  end
  
   root 'store#index', as: "store"

  
end
