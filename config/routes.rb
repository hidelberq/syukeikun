Syukeikun::Application.routes.draw do
  resources :screenings

  resources :users

  resources :sessions

  get 'login' => 'sessions#new'
  delete 'logout' => 'sessions#destroy'

  root :to => 'screenings#index'
end
