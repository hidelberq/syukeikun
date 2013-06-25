Syukeikun::Application.routes.draw do
  resources :screenings


  resources :users

  root :to => 'screenings#index'
end
