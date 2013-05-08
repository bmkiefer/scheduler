Rottenpotatoes::Application.routes.draw do

  resources :users do
    resources :profiles
    resources :levels do
      resources :transactionlevels
      resources :missions do
	resources :submissions do
	resources :submission_responses, only: [:create]
	end        
	resources :transactionmissions
      end
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
