Rottenpotatoes::Application.routes.draw do

  resources :users do
    resources :profiles
    resources :levels do
      resources :transactionlevels
      resources :missions do
        resources :transactionmissions
      end
    end
  end

  resources :sessions, only: [:new,:create,:destory]

  match '/home' => 'pages#home'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy', via: :delete
  match '/signup' => 'users#new'
  # map '/' to be a redirect to '/home'
  root :to => redirect('/home')
end
