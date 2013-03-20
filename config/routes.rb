Mediator::Application.routes.draw do

  resources :photoalbums, path: 'photoalbums', except: [:show] do
    resources :pictures
  end

  resources :videos

  root 'dashboard#index'
end
