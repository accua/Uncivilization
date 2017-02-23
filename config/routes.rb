Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root "nations#welcome"

  resources :users do
    resources :nations
  end
  resources :nations do
    resources :events, :only => [:show, :new, :create]
  end
  resources :events do
    resources :responses, :only => [:show, :new, :create]
  end
end
