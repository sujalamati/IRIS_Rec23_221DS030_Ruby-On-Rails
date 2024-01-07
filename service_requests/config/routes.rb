Rails.application.routes.draw do
  resources :service_requests do
    get 'available', on: :collection
  end
  resources :templates
  devise_for :users, controllers: { registrations: 'users/registrations'}
  get '/' , to: "static_pages#index"

  root 'static_pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
