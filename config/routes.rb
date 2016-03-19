Rails.application.routes.draw do

  root 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'signup'  => 'users#new'
  resources :users do
    resources :messages
    get 'show_sent_messages' => 'messages#show_sent_messages'
  end  
end