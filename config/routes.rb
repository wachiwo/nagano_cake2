Rails.application.routes.draw do
  
  namespace :public do
   resources :customers, only: [:show, :edit, :update]
   patch '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
  end
  namespace :public do
    resources:homes, only: [:top, :about]
    end
  
  namespace :admin do
    get 'orders/show'
  end
  namespace :admin do
    resources:customers, only: [:index, :show, :edit]
    end
  namespace :admin do
    resources :items, only: [:new, :index, :create, :edit, :show, :update]
  end
  
  namespace :admin do
    resources :genres, only: [:new, :index, :create, :edit, :update]
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
