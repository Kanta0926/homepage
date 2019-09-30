Rails.application.routes.draw do
  get 'sessions/new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :homes
  resources :articles
  get "/" => "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
