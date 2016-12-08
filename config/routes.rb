Rails.application.routes.draw do

  root to: "users#index"

  devise_scope :user do
    root to: "devise/registrations#new"
  end

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
