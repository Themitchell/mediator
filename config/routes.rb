Mediator::Application.routes.draw do

  resources :videos

  root 'dashboard#index'
end
