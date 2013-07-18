Rottenpotatoes::Application.routes.draw do

  resources :users do
    resources :requests
    resources :reservations
    resources :venues do
      resources :games
      resources :requests
    end
  end

  resources :sessions, only: [:new,:create,:destory]
  match ':controller/:action/:id'
  match '/password/edit' => 'password#edit'
  match '/password/update' => 'password#update'
  match '/home' => 'pages#home'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy', via: :delete
  match '/signup' => 'users#new'
  # map '/' to be a redirect to '/home'
  root :to => redirect('/home')
  
  
end
