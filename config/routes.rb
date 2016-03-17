Rails.application.routes.draw do
  get 'root'  => 'users#new'
  get 'index'  => 'users#index'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'
  resources :users  
end
