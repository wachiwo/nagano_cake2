Rails.application.routes.draw do

  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'orders/new'
    get 'orders/confirm'
    get 'orders/complete'
    get 'orders/index'
    get 'orders/show'
  end
  namespace :public do

    resources:items, only:[:index, :show]
  end

  namespace :public do
    resources:addresses, only:[:new, :index, :edit, :create, :update, :destroy]
  end
  namespace :public do
   resources :customers, only: [:show, :edit, :update]
   get "/customers/unsubscribe" => "customers#unsubscribe"
    patch "/customers/withdraw" => "customers#withdraw"
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end

  namespace :admin do
    get 'orders/show'
  end
  namespace :admin do
    resources:customers, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :items, only: [:new, :index, :create, :edit, :show, :update]
  end

  namespace :admin do
    resources :genres, only: [:new, :index, :create, :edit, :update]
  end

  namespace :admin do
     get 'homes/top'
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
