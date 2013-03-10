Mediator::Application.routes.draw do

  resources :pictures
  resources :videos

  root 'dashboard#index'
end
