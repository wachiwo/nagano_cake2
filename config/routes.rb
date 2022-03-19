Rails.application.routes.draw do
  namespace :admin do
     resources :genres, only: [:index, :create, :edit, :update]

  end
  namespace :admin do
    resources :homes, only: [:top]

  end
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'


  }

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'

  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
