Rails.application.routes.draw do

  get '/', to:
    'users#landing'

  root to: 'users/sessions#new'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end

#   devise_scope :user do
#     root to: 'devise/registrations#new'
#     get "signup", to: "devise/registrations#new"
#     get "login", to: "devise/sessions#new"
#     get "logout", to: "devise/sessions#destroy"
#  end

