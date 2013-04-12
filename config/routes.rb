Rottenpotatoes::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new,:create,:destory]

  match '/home' => 'pages#home'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy', via: :delete
  match '/signup' => 'users#new'
  match '/feedback' => 'submissions#new'#, via: :complete_mission  
  # map '/' to be a redirect to '/home'
  root :to => redirect('/home')
end
