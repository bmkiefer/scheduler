Rottenpotatoes::Application.routes.draw do

  resources :users do
    resources :levels do
      resources :transactionlevels
    end
  end

  resources :sessions, only: [:new,:create,:destory]
  match ':controller/:action/:id'
  match '/password/edit' => 'password#edit'
  match '/home' => 'pages#home'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy', via: :delete
  match '/signup' => 'users#new'
  match '/feedback' => 'submissions#new' 
  # map '/' to be a redirect to '/home'
  root :to => redirect('/home')
  
  
end
