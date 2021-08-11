Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations"}
  
  as :user do
    get '/' => 'devise/registrations#new'
  end

  # devise_for :users


  # root to: 'user#index'
  
  # unauthenticated :user do
  #   root to: 'user#index'
  # end

  resources :albums do
    resources :pictures
  end

end