Greggers::Application.routes.draw do
  resources :heads

  resources :gregs

  root :to => 'gregs#index'
end
