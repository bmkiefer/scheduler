Rottenpotatoes::Application.routes.draw do

  match '/home' => 'pages#home'
  match '/signin' => 'pages#signin'

  resources :users do
    resources :levels
  end
  # map '/' to be a redirect to '/users'
  root :to => redirect('/users')
end
