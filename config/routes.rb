Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root "nations#welcome"

  resources :users do
    resources :nations
  end

end
